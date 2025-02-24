<?php

namespace App\Livewire;

use App\Models\MailBox;
use Livewire\Component;
use Carbon\Carbon;

use Webklex\IMAP\Facades\Client;
use Webklex\PHPIMAP\Message;
use App\Mail\MailSender;
use Illuminate\Support\Facades\Mail;
use Livewire\Attributes\Validate;
use Livewire\WithFileUploads; // Import the trai
class ImapInbox extends Component
{
    use WithFileUploads;


    public $unread_message = 0;
    public $box = 'INBOX';
    public $show = 5;
    public $active_message = null;
    public $currentPage = 1;
    public $totalPages = 0;
    public $total_items =0;
    public $showing_to = 5;
    public $showing_form =1;

    public $q ='';

    protected $queryString = [
        'unread_message',
        'box',
        'show',
        'active_message',
        'showing_form',
        'showing_to',
        'totalPages',
        'currentPage',
        'q'

    ];


    public function readMail($id){
        $this->active_message = $id;
    }

    public function changeBox($box){
        $this->box = $box;
        $this->active_message = null;
        $this->q = '';
    }


    public function render()
    {
            $this->unread_message = MailBox::where(['box'=> 'INBOX', 'status'=> 0])->count();
            if($this->active_message){
                $active_message = MailBox::findOrFail($this->active_message); // Use getMessage() instead of find()

                if($active_message){
                    $active_message->status =1;
                    $active_message->save();
                }

                $active_messages= null;
            }else{

                $this->total_items = MailBox::where('box', $this->box)->count();
                $this->totalPages = ceil($this->total_items / $this->show);
                $this->showing_form = ($this->currentPage - 1) * $this->show;
                $this->showing_to = ($this->currentPage - 1) * $this->show + $this->show;

                $active_messages = MailBox::where(['box'=> $this->box])->orderBy('id','desc')
                ->when($this->q != '', function($query) {
                    $query->where(function($query) {
                        $query->where('message', 'like', "%{$this->q}%")
                              ->orWhere('subject', 'like', "%{$this->q}%")
                              ->orWhere('from', 'like', "%{$this->q}%")
                              ->orWhere('to', 'like', "%{$this->q}%");
                    });
                })
                    ->skip(($this->currentPage - 1) * $this->show)

                    ->take($this->show)
                    ->get();
                $active_message = null;
            }

        return view('livewire.imap-inbox',
        [
            'messages' =>  $active_messages,
            'message' => $active_message,

        ]);
    }

    public function showPage($key){
        if($key == '-'){
            if($this->currentPage != 1){
                $this->currentPage -=1;
            }
        }elseif($key == '+'){
            $this->currentPage +=1;
        }

    }








// mail send and replay ================================================
// mail send and replay ================================================
    public $sender = '';
    public $subject = '';
    public $body = '';
    public $attachment = []; // This will hold the file

    protected function buildRawMessage($from, $to, $subject, $body)
    {
        return "From: {$from}\r\n" .
            "To: {$to}\r\n" .
            "Subject: {$subject}\r\n" .
            "Date: " . now()->toRfc2822String() . "\r\n" .
            "MIME-Version: 1.0\r\n" .
            "Content-Type: text/plain; charset=UTF-8\r\n" .
            "Content-Transfer-Encoding: 7bit\r\n\r\n" .
            $body;
    }


    public function replay($id){
        $message  =  MailBox::findOrFail($id);
        if($message){
            $this->subject = $message->subject;
            if($message->box == 'INBOX'){
                $this->sender = $message->from;
            }else {
                $this->sender = $message->to;
            }
            $this->body = json_decode($message->message);
        }
    }
    public function forward($id){
        $message  =  MailBox::findOrFail($id);
        if($message){
            $this->subject = $message->subject;
            $this->sender = '';
            $this->body = json_decode($message->message);
        }
    }

    public function saveDraf(){

        $mail_find = new MailBox();
        $mail_find->subject = $this->subject;
        $mail_find->from = $this->sender;
        $mail_find->to = '';
        $mail_find->type = '';
        $mail_find->box = 'Drafts';
        $mail_find->cc = '';
        $mail_find->bcc = '';
        $mail_find->reply_id = 0;
        $mail_find->message = json_encode($this->body);
        $mail_find->image = json_encode([]);
        $mail_find->date_message = '';
        $mail_find->save();


        $this->resetsender();


    }

    public function sendMessage() {
        $this->validate([
            'sender' => 'required|email',
            'subject' => 'required|string|min:3',
            'body' => 'required|string|min:10',
            // Validate the attachments
            'attachment.*' => 'file|mimes:jpg,jpeg,png,pdf,docx|max:10240', // Validate file types and size

        ]);
            // Send the email via SMTP
        Mail::to($this->sender)->send(new MailSender($this->subject, $this->body, $this->attachment));

        // Connect to IMAP to save the sent message in the Sent folder
        $client = Client::account('mailtrap');  // Use your IMAP account credentials here
        $client->connect();

        // Get the Sent folder
        // Prepare the raw message
        $rawMessage = $this->buildRawMessage(config('imap.accounts.mailtrap.username'), $this->sender, $this->subject, $this->body);

        // Get the Sent folder and append the raw message
        $sentFolder = $client->getFolder('Sent');
        $sentFolder->appendMessage($rawMessage);

        session()->flash('message', 'Message sent successfully.');
        $this->dispatch('message-sent', session('message'));
    }



    public function resetsender()
    {
        $this->reset(['sender', 'subject', 'body']);
    }




// Help to sync data form server ====================================
// Help to sync data form server ====================================

    protected $sync_page = 1;
    protected $sync_items = 20;


    public function messagetype($from, $subject){
            $return = 'general';
            if (strpos($from, 'facebook.com') !== false || strpos($from, 'twitter.com') !== false) {
                 $return = "social";
            } elseif (strpos($subject, 'sale') !== false || strpos($subject, 'discount') !== false) {
                $return = "promotional";
            } elseif (strpos($from, 'cpanel@') !== false || strpos($subject, 'configuration settings') !== false) {
                $return = "configuration";
            } else {
                $return = "general";
            }
            return $return;
    }


    public function getImgDisplay($type){
        $fileExtension = $type;
        $icon = '';
        switch(strtolower($fileExtension)) {
            case 'pdf':
                $icon = 'far fa-file-pdf';
                break;
            case 'docx':
            case 'doc':
                $icon = 'far fa-file-word';
                break;
            case 'jpg':
            case 'jpeg':
            case 'png':
            case 'gif':
                $icon = 'img';
                break;
            default:
                $icon = 'fas fa-paperclip';

        }
       return $icon;
    }


    public function attachment_store($message){
        $inlineImages = [];
        $attachments = $message->getAttachments();

        foreach ($attachments as $attachment) {
            $filename = time() . '_' . $attachment->getName();
            $filePath = public_path('attachments/' . $filename); // Save to public/attachments

            // Save file
            file_put_contents($filePath, $attachment->getContent());

            // Save attachment details
            $inlineImages[$attachment->getId()] = [
                'url' => asset('attachments/' . $filename), // Public URL
                'type' => $attachment->getContentType(),
                'name' => $attachment->getName(),
                'size' => $attachment->getSize(),
                'size_megabyte' => number_format($attachment->getSize() / 1024, 2) . ' KB',
                'id' => $attachment->getId(),
                'disposition' => $attachment->getDisposition(),
                'extension' => pathinfo($attachment->getName(), PATHINFO_EXTENSION),
                'icon' => $this->getImgDisplay($attachment->getExtension()),
                'file_path' => 'attachments/' . $filename, // Relative path
            ];
        }






        if($message->getHTMLBody() == ""){
            $body = $message->getTextBody();
        }else{

            $body = $message->getHTMLBody();
        }

        // dd($inlineImages);

        foreach ($inlineImages as $cid => $array_data) {
            $body = str_replace("cid:$cid", $array_data['url'], $body);
        }
        return [
            'body' => $body,
            'image' => $inlineImages
        ];
    }

    public function mail_box_refresh($box){


        /** @var \Webklex\PHPIMAP\Client $client */
        $client = Client::account('mailtrap');

        //Connect to the IMAP Server
        $client->connect();
        $active_message_box = $client->getFolder($box);
        $active_messages= null;
        // $message_body = $this->parseEmailBody($active_message);
        if(MailBox::where('box', $box)->count() > 0){
            if($box == 'INBOX'){
                $active_messages = $active_message_box->query()->unseen()->get(); // Get unread
            }else {
                $active_messages = $active_message_box->messages()->all()->get(); // Get unread
            }
        }else{
            $active_messages = $active_message_box->messages()->all()->get();

        }
        // dd($active_messages);

        foreach($active_messages as $key => $items){
            $subject = $items->get("subject")->toString();;
            $form =  optional($items->getFrom()[0])->mail ?? 'Unknown';
            $to = optional($items->getTo()[0])->mail ?? 'Unknown';
            $date = $items->getDate();


            $mail_find = MailBox::where(['from'=> $form, 'box' => $box, 'subject'=>$subject, 'to'=>$to,'date_message'=>$date])->first();

            if(!$mail_find){

                $type = $this->messagetype($form, $subject);
                $reply_id = $items->getHeaders()->get('In-Reply-To');
                $attachment_body = $this->attachment_store($items);
                $cc = optional($items->getCc()[0])->mail ?? 'Unknown';
                $bcc = optional($items->getBcc()[0])->mail ?? 'Unknown';


                $mail_find = new MailBox();
                $mail_find->subject = $subject;
                $mail_find->from = $form;
                $mail_find->to = $to;
                $mail_find->type = $type;
                $mail_find->box = $box;
                $mail_find->cc = $cc;
                $mail_find->bcc = $bcc;
                $mail_find->reply_id = $reply_id;
                $mail_find->message = json_encode($attachment_body['body']);
                $mail_find->image = json_encode($attachment_body['image']);
                $mail_find->date_message = $date;
                $mail_find->save();
            }
        }
    }



}

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

class ImapInbox extends Component
{

    

    public $unread_message = 0;
    public $box = 'INBOX';
    public $show = 10;
    public $active_message = null;

    protected $queryString = [
        'unread_message',
        'box',
        'show',
        'active_message'
    ];


    public function readMail($uid){
        $this->active_message = $uid;
    }

    public function changeBox($box){
        $this->box = $box;
        $this->active_message = null;
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




    public function getInlineImages($message)
    {
        $attachments = $message->getAttachments();
        $inlineImages = [];


        foreach ($attachments as $attachment) {

                $cid = trim($attachment->getContentId(), '<>'); // Remove < >
                $inlineImages[$cid] = [
                    'image' => 'data:image/png;base64,' . base64_encode($attachment->getContent()),
                    'type' => $attachment->getContentType(),
                    'name' => $attachment->getName(),
                    'size' => $attachment->getSize(),
                    'size_megabite' => number_format($attachment->getSize() / 1024, 2),
                    'id' => $attachment->getId(),
                    'disposition' => $attachment->getDisposition(),
                    'extension' => pathinfo($attachment->getName(), PATHINFO_EXTENSION),
                    'icon' => $this->getImgDisplay($attachment->getExtension()),

                ];

        }
        return $inlineImages;
    }

    public function parseEmailBody($message)
    {
        $body = $message->getHTMLBody();
        $inlineImages = $this->getInlineImages($message);
        // dd($inlineImages);

        foreach ($inlineImages as $cid => $array_data) {
            $body = str_replace("cid:$cid", $array_data['image'], $body);

            // remove image when key find
            // unset($inlineImages[$cid]);
        }


        $content =  [
            'body' => $body,
            'image' => $inlineImages
        ];


        return $content;
    }

    public function render()
    {
           /** @var \Webklex\PHPIMAP\Client $client */
           $client = Client::account('mailtrap');

           //Connect to the IMAP Server
           $client->connect();

           $inbox = $client->getFolder('INBOX');
           $this->unread_message = $inbox->messages()->unseen()->count();
            $message_body = null;
           $active_message_box = $client->getFolder($this->box);
            if($this->active_message){
                $active_message = $active_message_box->messages()->getMessage($this->active_message); // Use getMessage() instead of find()
                $active_messages= null;
                $message_body = $this->parseEmailBody($active_message);
            }else{
                $active_messages = $active_message_box->messages()->all()->setFetchOrderDesc()->paginate($this->show);
                $active_message = null;
            }

        return view('livewire.imap-inbox',
        [
            'messages' =>  $active_messages,
            'message' => $active_message,
            'message_body' => $message_body
        ]);
    }





    // send message
    public $sender = '';
    public $subject = '';
    public $body = '';

    public function sendMessage() {
        $this->validate([
            'sender' => 'required|email',
            'subject' => 'required|string|min:3',
            'body' => 'required|string|min:10',
        ]);
        // Send the email via SMTP
    Mail::to($this->sender)->send(new MailSender($this->subject, $this->body));

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






public function resetsender()
{
    $this->reset(['sender', 'subject', 'body']);
}



    protected $sync_page = 1;
    protected $sync_items = 20;

    public function mail_box_refresh($box){
//         //  $this->box = $box;

//         /** @var \Webklex\PHPIMAP\Client $client */
//         $client = Client::account('mailtrap');

//         //Connect to the IMAP Server
//         $client->connect();
//         $active_message_box = $client->getFolder($this->box);
//         // $current_message = $active_message_box->messages()->getMessage($this->active_message); // Use getMessage() instead of find()
//         $active_messages= null;
//         // $message_body = $this->parseEmailBody($active_message);
//         if(MailBox::where('box', $this->box)->count() > 0){

//         }else{
//             $active_messages = $active_message_box->messages()->all()->get();

//         }
//         // dd($active_messages);

//         foreach($active_messages as $key => $items){
//             $subject = $items->getSubject();
//             $form =  optional($items->getFrom()[0])->mail ?? 'Unknown';
//             $to = optional($items->getTo()[0])->mail ?? 'Unknown';
//             $reference_id = $items->getHeaders()->get('In-Reply-To');


//             $mail_find = MailBox::where(['from'=> $subject, 'box' => $box, 'form'=>$form, 'to'=>$to])->first();
//             if(!$mail_find){
//                 $mail_find = new MailBox();
//                 $mail_find->subject = $subject;
//                 $mail_find->form = $form;
//                 $mail_find->to = $to;



//                 id	name	from	to	cc	bcc	reply_id	subject	message	type
// Important, Promotions, Social	box
// INBOX, Sent, Draft, Trash	creator	created_at	updated_at	
//                 $mail_find->save();
//                 // $mail_find->to = $to;
//             }

//         }


        
    }



}

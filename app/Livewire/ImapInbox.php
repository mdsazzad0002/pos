<?php

namespace App\Livewire;

use Livewire\Component;
use Carbon\Carbon;

use Webklex\IMAP\Facades\Client;


class ImapInbox extends Component
{
    public $unread_message = 0;
    public $box = 'INBOX';
    public $show = 10;
    public $active_message = null;

    

    public function readMail($uid){
        $this->active_message = $uid;
    }

    public function changeBox($box){
        $this->box = $box;
        $this->active_message = null;
    }

    public function downloadAttachment($uuid){
       // $this->ac
    }
    public function render()
    {
           /** @var \Webklex\PHPIMAP\Client $client */
           $client = Client::account('mailtrap');

           //Connect to the IMAP Server
           $client->connect();
   
           $inbox = $client->getFolder('INBOX');
           $this->unread_message = $inbox->messages()->unseen()->count();

           $active_message_box = $client->getFolder($this->box);
            if($this->active_message){
                $active_message = $active_message_box->messages()->getMessage($this->active_message); // Use getMessage() instead of find()
                $active_messages= null;
            }else{
                $active_messages = $active_message_box->messages()->all()->paginate($this->show);
                $active_message = null;
            }

        return view('livewire.imap-inbox',
        [
            'messages' =>  $active_messages,
            'message' => $active_message
        ]);
    }
}

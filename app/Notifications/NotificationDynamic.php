<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class NotificationDynamic extends Notification
{
    use Queueable;
    public $notificationInfo;
    /**
     * Create a new notification instance.
     */
    public function __construct($notificationInfo)
    {
        $this->notificationInfo = $notificationInfo;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        return (new MailMessage)
                    ->line($this->notificationInfo['line'])
                    ->subject('Invoice Payment Failed')
                    ->action($this->notificationInfo['action'], url($this->notificationInfo['url']))
                    ->line($this->notificationInfo['greetings'])
                    ->view(
                        'notification.dynamic', ['notificationInfo_data' => $this->notificationInfo]
                    );
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            //
        ];
    }
}

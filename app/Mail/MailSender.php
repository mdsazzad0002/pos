<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;


class MailSender extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     */
    public function __construct($subject, $body, $attachment = [])
    {
        $this->subject = $subject;
        $this->body = $body;
        $this->attachment =$attachment;
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: $this->subject,
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            view: 'mail.MailSender',
            with: [
                'subject' => $this->subject,
                'body' => $this->body,
            ],

        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        $attachments = [];
        $this->attachments = collect($this->attachments)->map(function ($file) {
            return $file->store('attachments', 'public'); // Store files in the 'attachments' directory
        })->toArray();

        if ($this->attachments) {
            foreach ($this->attachments as $attachment) {
                $attachments[] = \Illuminate\Mail\Mailables\Attachment::fromStorageDisk('public', $attachment->getRealPath())
                    ->as($attachment->getClientOriginalName())  // Original file name
                    ->withMime($attachment->getMimeType()); // MIME type
            }
        }

        return $attachments;
    }

}

<?php

namespace Database\Seeders\mail;

use App\Models\mail\MailTemplate;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MailTemplateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'name' => 'test_mail',
                'template' => 'test_mail',
                'keywords' => 'name',
            ],
            [
                'name' => 'order_create',
                'template' => 'test_mail',
                'keywords' => 'name',
            ],
            [
                'name' => 'order_status_change',
                'template' => 'test_mail',
                'keywords' => 'name',
            ],
            [
                'name' => 'order_reject',
                'template' => 'test_mail',
                'keywords' => 'name',
            ],
            [
                'name' => 'verification_customer',
                'template' => 'test_mail',
                'keywords' => 'name,code,email',
            ],

        ];

        $count = MailTemplate::count();
        if($count == 0){
            foreach($data as $item){
                $mail_template = new MailTemplate();
                $mail_template->name = $item['name'];
                $mail_template->template = $item['template'];
                $mail_template->keywords = $item['keywords'];
                $mail_template->creator = 1;
                $mail_template->updater_id = 1;
                $mail_template->save();
            }
        }
    }
}

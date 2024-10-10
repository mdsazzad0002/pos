<?php

namespace Database\Seeders\mail;

use App\Models\mail\MailSetting;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MailSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $mail_setting = new MailSetting;
        $mail_setting->from_address = 'mdsaszzad0002@gmail.com';
        $mail_setting->from_name = 'D Engr Mailer';
        $mail_setting->smtp_encryption = null;
        $mail_setting->smtp_host = 'sandbox.smtp.mailtrap.io';
        $mail_setting->smtp_password = 'a1277ade6e6e0a';
        $mail_setting->smtp_port = 2525;
        $mail_setting->smtp_username = 'e7355b9530299d';
        $mail_setting->status = 1;
        $mail_setting->save();

    }
}

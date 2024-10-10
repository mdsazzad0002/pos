<?php

namespace Database\Seeders\mail;

use Illuminate\Database\Seeder;
use Database\Seeders\mail\MailSettingSeeder;
use Database\Seeders\mail\MailTemplateSeeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class MailCaller extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call([
            MailSettingSeeder::class,
            MailTemplateSeeder::class,
        ]);
    }
}

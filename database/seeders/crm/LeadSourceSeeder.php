<?php

namespace Database\Seeders\crm;

use App\Models\crm\LeadSource;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LeadSourceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $leadsources = ['Facebook', 'Email', 'Twitter', 'Voice Call', 'Whatsapp', 'Linkedin'];
        foreach($leadsources as $leadsource){
            $newleadsource = new LeadSource();
            $newleadsource->name = $leadsource;
            $newleadsource->creator = 1;
            $newleadsource->save();

        }

    }
}

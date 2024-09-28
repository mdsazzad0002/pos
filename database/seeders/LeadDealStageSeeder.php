<?php

namespace Database\Seeders;

use App\Models\LeadDealStage;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LeadDealStageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $leadstages = ['Pending', 'Reschedule', 'Qualified', 'Closed'];
        foreach($leadstages as $stage){
            $newleadsource = new LeadDealStage();
            $newleadsource->name = $stage;
            $newleadsource->creator = 1;
            $newleadsource->save();

        }
    }
}

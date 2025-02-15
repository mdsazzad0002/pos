<?php

namespace App\Livewire;

use App\Models\order;
use Livewire\Component;

class LatestOrder extends Component
{

    public $orders;
    public $pollInterval = 15000; // 5 seconds for polling

    // Called on initial load
    // public function mount()
    // {
    //     $this->loadData();
    // }

    public function loadData()
    {
        $this->orders = order::latest()->take(7)->get();

    }



    public function render()
    {
        return view('livewire.latest-order');
    }
}

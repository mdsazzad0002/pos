<?php

namespace App\Livewire;

use App\Models\product;
use Livewire\Component;

class RecentProduct extends Component
{

    public $productInterval = 15000;
    public $products;

    public function loadProducts(){
        $this->products = product::latest()->take(6)->get();
    }

    public function render()
    {
        return view('livewire.recent-product');
    }
}

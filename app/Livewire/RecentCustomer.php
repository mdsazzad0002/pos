<?php

namespace App\Livewire;

use App\Models\Customer;
use Carbon\Carbon;
use Livewire\Component;

class RecentCustomer extends Component
{

    public $customer;
    public $pollInterval = 15000; // 15 seconds $
    protected $listeners = ['loadCustomer'];
    public $latest_customer = 0;

    public function loadCustomer(){
        $this->customer = Customer::latest()->take(12)->get();
        $this->latest_customer = Customer::whereDate('created_at' ,'>=', Carbon::today()->subDays(3))->count();
    }
    public function render()
    {
        return view('livewire.recent-customer');
    }
}

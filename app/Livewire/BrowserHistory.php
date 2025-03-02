<?php

namespace App\Livewire;

use App\Models\Visitor;
use Carbon\Carbon;
use Livewire\Component;

class BrowserHistory extends Component
{
    public $browserData = [];
    public $topitems_ip = [];
    public $browsers = ['Chrome', 'IE', 'FireFox', 'Safari', 'Opera', 'Navigator'];
    public $colors = ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'];

    public function mount()
    {
        $this->ratio();
    }
    public function ratio(){
          $browserStats = Visitor::where('visit_date', Carbon::today()->toDateString())
                                ->select('browser', \DB::raw('count(*) as count'))
                                ->groupBy('browser')
                                ->get();

                                // Initialize the data for each browser to 0
        $browserData = array_fill_keys($this->browsers, 0);

        // Fill the data based on the query result
        foreach ($browserStats as $stat) {
            if (in_array($stat->browser, $this->browsers)) {
                $browserData[$stat->browser] = $stat->count;
            }
        }

        $this->browserData = $browserData;
    }

    public function getBrowserData()
    {
        // Get the browser stats for today

         $totalVisits = Visitor::where('visit_date', Carbon::today()->toDateString())->count();

        $topitems_ip = Visitor::where('visit_date', Carbon::today()->toDateString())
                                ->select('ip_address', \DB::raw('count(*) as count'))
                                ->groupBy('ip_address')
                                ->orderBy('count', 'desc')
                                ->limit(50)
                                ->get()
                                ->map(function ($item) use ($totalVisits) {
                                    $item->percentage = $totalVisits > 0 ? round(($item->count / $totalVisits) * 100, 2) : 0;
                                    return $item;
                                });





        $this->topitems_ip = $topitems_ip;
    }



    public function render()
    {
        return view('livewire.browser-history');
    }
}

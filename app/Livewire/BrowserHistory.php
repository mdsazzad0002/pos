<?php

namespace App\Livewire;

use App\Models\Visitor;
use Carbon\Carbon;
use Livewire\Component;

class BrowserHistory extends Component
{
    public $browserData = [];
    public $browsers = ['Chrome', 'IE', 'FireFox', 'Safari', 'Opera', 'Navigator'];
    public $colors = ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'];

    public function mount()
    {
        $this->getBrowserData();
    }

    public function getBrowserData()
    {
        // Get the browser stats for today
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


    
    public function render()
    {
        return view('livewire.browser-history');
    }
}

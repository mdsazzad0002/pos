<?php
namespace App\View\Components;

use Illuminate\View\Component;

class Summary extends Component
{
    public function render()
    {
        return view('admin.device_log.partials.summary');
    }
}

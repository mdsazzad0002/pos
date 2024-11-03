<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

class BackupController extends Controller
{
    public function createBackup(Request $request)
    {
        Artisan::call('backup:run');
        $output = Artisan::output();

        // Workfind in command line
        return redirect()->back()->with('message', $output);
    }
}

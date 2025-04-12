<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\WaService;

class WaController extends Controller
{
    public function __construct(){
        $this->waService = new WaService();
    }
    public function index(){
        return view('admin.wa.index');

    }

    public function sendMessage(Request $request){
        $phone = $request->phone;
        $message = $request->message;
        $this->waService->sendTextMessage($phone, $message);
    }

    public function tokenGenerate(){
        $this->waService->getToken();
    }
}

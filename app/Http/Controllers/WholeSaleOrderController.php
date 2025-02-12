<?php

namespace App\Http\Controllers;

use App\Models\WholeSaleOrder;
use Illuminate\Http\Request;

class WholeSaleOrderController extends Controller
{
    public function blukOderStore(Request $request){

        $request->validate([
            'name' => 'required'

        ]);


        $wholesale = new WholeSaleOrder();
        $wholesale->order_type = $request->order_type;
        $wholesale->name = $request->name;
        $wholesale->phone = $request->phone;
        $wholesale->email = $request->email;
        $wholesale->address = $request->address;
        $wholesale->company = $request->company;
        $wholesale->date = $request->date;
        if($request->has('type')) {
            $wholesale->type = implode(',', $request->type);
        }else{
            $wholesale->type = '';
        }
        $wholesale->quantity = $request->quantity;
        $wholesale->description = $request->description;
        $wholesale->save();


        return json_encode([
            'title'=>'Successfully  Created Whole Sale Order',
            'type'=>'success',
            'refresh'=>'true',
        ]);

    }

}

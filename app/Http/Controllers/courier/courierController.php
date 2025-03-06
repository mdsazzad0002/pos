<?php
namespace App\Http\Controllers\courier;

use App\Http\Controllers\Controller;
use App\Models\courier\CourierCredential;
use App\Models\order;
use App\Models\payment\TransectionInformation;
use App\Models\Stock;
use App\Http\Controllers\courier\steadfast\CourierHandler;

class courierController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


    /**
     * decition_courier
     */
    public function decition_courier($request, $order){
        
        if($request->courier_id){
            $courier = CourierCredential::find($request->courier_id);
            if($courier){
                if($courier->status == 1){
                    if($courier->provider == 'SteadFast'){
                        
                        return $this->steadfast($request, $order);
                    }
                    return json_encode(['success' => false, 'message' => 'Configuration not found']);

                }
                return json_encode(['success' => false, 'message' => 'Status not found']);

            }else{
                return json_encode(['success' => false, 'message' => 'Courier not found']);
            }
        }
        return json_encode(['success' => false, 'message' => 'Courier not found']);
    }





    public function steadfast($request, $order){
        $new = new CourierHandler();

        if($request->has('create_box')){
            $order =  Order::findOrFail($order);
            if($order){
                return view('admin.courier.steadfast.create_box', ['order'=>$order, 'request'=>$request]);
            }
            return json_encode([
                'success'=>false,
                'message' => 'Order Not found',
            ]);
           
        }elseif($request->has('create')){
            $data_array = [
                'invoice' => $request->order_id,
                'recipient_name' => $request->name,
                'recipient_phone' => $request->phone,
                'recipient_address' => $request->address,
                'cod_amount' => $request->amount,
                'note' => $request->note

                // invoice  recipient_name  recipient_phone  recipient_address  cod_amount  note
            ]; 
            return $new->order_create($data_array);
           
        }

        return json_encode(['success' => false, 'message' => 'Action not found']);
    }

}
<?php
namespace App\Http\Controllers\courier;

use App\Http\Controllers\Controller;
use App\Models\courier\CourierCredential;
use App\Models\order;
use App\Models\payment\TransectionInformation;
use App\Models\Stock;
use App\Http\Controllers\courier\steadfast\CourierHandler;
use App\Models\CourierInfo;

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

             // store data for steadfast =========================================================================================================================
            $data_array = [
                'invoice' => $request->order_id,
                'recipient_name' => $request->name,
                'recipient_phone' => $request->phone,
                'recipient_address' => $request->address,
                'cod_amount' => $request->amount,
                'note' => $request->note

                // invoice  recipient_name  recipient_phone  recipient_address  cod_amount  note
            ]; 

           
            $response = $new->order_create($data_array);
            $response_data = $response;
            if($response){
                 $response = json_decode($response, true);
                //  dd($response);
                 if($response['status'] == 200){
                    $data = $response['consignment'];
                    $new_courier_info = new CourierInfo();
                    $new_courier_info->order_id = $request->order_id;
                    $new_courier_info->provider_id = $request->courier_id;
                    $new_courier_info->amount = $data['cod_amount'];
                    $new_courier_info->consignment_id = $data['consignment_id'];
                    $new_courier_info->name = $data['recipient_name'];
                    $new_courier_info->phone = $data['recipient_phone'];
                    $new_courier_info->address = $data['recipient_address'];
                    $new_courier_info->tracking_code = $data['tracking_code'];
                    $new_courier_info->note = $data['note'];
                    $new_courier_info->status = $data['status'];
                    $new_courier_info->save();
                 }

                 if($response['status'] == 200){
                        return json_encode([
                            'type' => 'success',
                            'title' => 'Order Send on Courier Tracking Id '.$response['consignment']['tracking_code'],
                        ]);
                }
            }
            return $new->order_create($data_array);
            // end steadfast store =============================================================================================================================
           
        }elseif($request->has('status')){
            // status by invoice ===============================================================================================
           $response_data = $new->status_by_invoice($request->order_id);
           if($response_data){
                $response_data = json_decode($response_data, true);
                if($response_data['status'] == 200){
                    $new_courier_info = CourierInfo::where('order_id', $request->order_id)
                    ->orWhere('consignment_id', $request->consignment_id)
                    ->where('tracking_code', $request->tracking_code)
                    ->first();
                    if($new_courier_info){
                        $new_courier_info->status = $response_data['delivery_status'];
                        $new_courier_info->save();
                    }
                    // dd($new_courier_info);
                    return json_encode([
                        'type' => 'success', //valid
                        'success' => true,
                        'title' => 'Current Status '.$response_data['delivery_status'],
                        'message' => 'Current Status '.$response_data['delivery_status'], //valid
                    ]);
                }

           }
           return $response_data;
           // end status by invoice ===============================================================================================
        }


        return json_encode(['success' => false, 'message' => 'Action not found']);
    }

}
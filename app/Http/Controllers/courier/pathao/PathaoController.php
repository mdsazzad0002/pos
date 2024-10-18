<?php

namespace App\Http\Controllers\courier\pathao;
use App\Http\Controllers\Controller;
use App\Models\Pathao;

use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;


class PathaoController extends Controller
{
    protected $pathaoService;

    public function __construct(PathaoAPIService $pathaoService)
    {
        $this->pathaoService = $pathaoService;
    }

    public function index(Request $request){
        return view('courier.pathao.order.index');
    }
    public function createStore(Request $request)
    {
        $accessToken = $this->pathaoService->getAccessToken();
        $data = [];
        $data['name'] = "Emon Store1";
        $data['contact_name'] = "Emon";
        $data['contact_number'] = "01521437220";
        $data['secondary_contact'] = "01638849305";
        $data['address'] = "Dholairpar, Jatrabari";
        $data['city_id'] = 1;
        $data['zone_id'] = 248;
        $data['area_id'] = 17920;
        $store = $this->pathaoService->createStore($accessToken, $data);
        return response()->json($store);
    }

    public function getStores()
    {
        $accessToken = $this->pathaoService->getAccessToken();
        $stores = $this->pathaoService->getStores($accessToken);
        return response()->json($stores);
    }

    public function getCityList()
    {
        $accessToken = $this->pathaoService->getAccessToken();
        $cityList = $this->pathaoService->getCityList($accessToken);

        return response()->json($cityList);
    }

    public function getZoneList($cityId)
    {
        $accessToken = $this->pathaoService->getAccessToken();
        $zoneList = $this->pathaoService->getZoneList($accessToken, $cityId);

        return response()->json($zoneList);
    }

    public function getAreaList($zoneId)
    {
        $accessToken = $this->pathaoService->getAccessToken();
        $areaList = $this->pathaoService->getAreaList($accessToken, $zoneId);

        return response()->json($areaList);
    }

    public function getPrice(Request $request)
    {
        $accessToken = $this->pathaoService->getAccessToken();
        $price = $this->pathaoService->getPrice($accessToken, $request->all());
        return response()->json($price);
    }

    public function createOrder(Request $request)
    {
        // return response()->json($request->all());
        $accessToken = $this->pathaoService->getAccessToken();
        $order = $this->pathaoService->createOrder($accessToken, $request->all());
        $order_response = response()->json($order);

        if ($order_response->getStatusCode() == 200) { // Check if the response status code is 200
            $content = $order_response->getContent();

            // Decode the JSON content
            $order_data = json_decode($content, true);

            if ($order_data['type'] == 'success' && $order_data['code'] == '200') {
                $cerete_pathao = new Pathao;
                $cerete_pathao->consignment_id = $order_data['data']['consignment_id'];
                $cerete_pathao->merchant_order_id = $order_data['data']['merchant_order_id'];
                $cerete_pathao->order_status = $order_data['data']['order_status'];
                $cerete_pathao->delivery_fee = $order_data['data']['delivery_fee'];
                $cerete_pathao->save();
                return $order_data;
            } else {
                return $order_data;
            }
        }
    }

    public function  getInfo(Request $request) {
        $request->validate(['consignment_id' => 'required']);
        $consignment_id = $request->consignment_id;
        $accessToken = $this->pathaoService->getAccessToken();
        $order = $this->pathaoService->getInfo($accessToken, $consignment_id);
        $order_response = response()->json($order);

        if ($order_response->getStatusCode() == 200) { // Check if the response status code is 200
            $content = $order_response->getContent();

            // Decode the JSON content
            $order_data = json_decode($content, true);

            if ($order_data['type'] == 'success' && $order_data['code'] == '200') {
                $cerete_pathao = Pathao::where('consignment_id',  $consignment_id)->get()->first();

                $cerete_pathao->order_status = $order_data['data']['order_status'];
                $cerete_pathao->invoice_id = $order_data['data']['invoice_id'];

                $cerete_pathao->save();
                return $order_data;
            } else {
                return $order_data;
            }
        }
    }

    public function tracking(){

        return view('courier.pathao.tracking.index');
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\product;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class StockManagementController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $stock_data = Product::select('id','name','variant_on', 'alert_quantity', 'quantity')->paginate(30);
        return view('admin.stock.index', ['stock_data' => $stock_data]);
    }
    public function stockalert()
    {

        if (request()->ajax()) {
            return DataTables::make(product::query()->whereColumn('quantity', '<=', 'alert_quantity'))
                ->make(true);
        }
        
        return view('admin.stock.alert');
    }



}

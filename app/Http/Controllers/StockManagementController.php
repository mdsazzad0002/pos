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
           if (request()->ajax()) {
            return DataTables::make(product::query())
                ->make(true);

        }
        return view('admin.stock.index');
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

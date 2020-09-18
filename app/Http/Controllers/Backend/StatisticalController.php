<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Attr;
use App\Models\Order_detail;
use App\Models\Order;
use App\Models\Product_detail;
use Illuminate\Support\Facades\DB;
class StatisticalController extends Controller
{
    public function tonKho()
    {
        $product_details=Product_detail::where('quantity','>',0)->get();
// dd($product_details);
        return view('backend.statistical.ton_kho',compact('product_details'));
    }
    public function banChay()
    {
        // where('quantity','>',0)->orderby('quantity','desc')->get();
        $order_details=Order_detail::where('quantity','>','0')
        ->select('id_pro_detail', DB::raw('sum(order_details.quantity) quantity'))
        ->groupBy('id_pro_detail')
        ->orderby('quantity','desc')
        ->get();
// dd($order_details);
        return view('backend.statistical.ban_chay',compact('order_details'));
    }
    public function doanhThu()
    {
        $orders=Order::where('status','=',3)->get();
// dd($product_details);
        return view('backend.statistical.doanh_thu',compact('orders'));
    }
}

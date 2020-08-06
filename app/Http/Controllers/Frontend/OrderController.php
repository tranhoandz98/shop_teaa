<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Order_detail;
use Auth;

class OrderController extends Controller
{
    public function order(){
		$orders=Order::where('id_user','=',Auth::user()->id)->get();
		// $order_detail=Order::where('id_order','=',$order->id)->get();
		return view('frontend.pages.don_hang',compact('orders'));
	}
	public function order_detail($id){
		$order=Order::find($id);
		$order_details=Order_detail::where('id_order','=',$id)->get();
		// dd($order_details);
		return view('frontend.pages.don_hang_chi_tiet',compact('order_details','order'));
	}
	public function post_order_detail(Request $request, $id){
		$order=Order::find($id);
		$order->update([
			'status'=>$request->status,
		]);
		// dd($order->status);
	return redirect()->route('order-frontend',$id)->with('success','Hủy hàng thành công');
	}
}

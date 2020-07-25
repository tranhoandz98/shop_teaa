<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Product;
use App\Models\Product_detail;
use App\Models\Img_pro;
use App\Models\Attr;
use Illuminate\Http\Request;
class FrontendController extends Controller {
	public function index() {
		$product=Product::all();
		return view('frontend.pages.home',compact('product'));
	}
	public function shop(){
		$category=Category::where([['status','=','1'],['type','=','1']])->orderby('name')->get();
		$attr=Attr::all();
		$products=Product::where('status','=','1')->paginate(6);
		foreach ($products as $product) {
			$details = $product->product_details;
			$product->setAttribute('price', $details[0]['price']);
			$product->setAttribute('discount', $details[0]['discount']);
			$product->setAttribute('id_detail', $details[0]['id']);
			$product->setAttribute('quantity', $details[0]['quantity']);
			// dd($product);
		}
		return view('frontend.pages.shop',compact('category','products','attr'));
	}
	public function product_detail($slug, $id_detail){
		$attr=Attr::all();
		$product=Product::where('slug','=',$slug)->first();
		$product_detail=Product_detail::where('id_product','=',$product->id)->get();
		$img_pro=Img_pro::where('id_product','=',$product->id)->get();

		$product_detail_id=Product_detail::find($id_detail);
		return view('frontend.pages.product_detail',compact('product','product_detail','product_detail_id','img_pro','attr'));
	}
}

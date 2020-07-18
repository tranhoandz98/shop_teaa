<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Product;
use App\Models\Product_detail;
use App\Models\Attr;
class FrontendController extends Controller {
	public function index() {
		$product=Product::all();
		return view('frontend.pages.home',compact('product'));
	}
	
	public function shop(){
		$category=Category::where([['status','=','1'],['type','=','1']])->orderby('name')->get();
		$attr=Attr::all();
		// $product_cate=Product::where('id_cate','=','$category->id')->get();
		// $product=Product::where('status','=','1');
		$product= Product::where('status','=','1')->get();
		// $product=Product::join('product_details','products.id','=','product_details.id_product')
		// ->select('products.*','product_details.price','product_details.discount')
		// ->get();
		// dd($product);
		return view('frontend.pages.shop',compact('category','product','attr'));
	}
	public function product_detail($id){
		$attr=Attr::all();
		// $product_cate=Product::where('id_cate','=','$category->id')->get();
		// $product=Product::where('status','=','1');
		// $product= Product::where('status','=','1')->get();
		// $product=Product::join('product_details','products.id','=','product_details.id_product')
		// ->select('products.*','product_details.price','product_details.discount')
		// ->get();
		$product=Product::find($id);
		// dd($product);
		return view('frontend.pages.product_detail',compact('product','attr'));
	}

}

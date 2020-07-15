<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Product;
class FrontendController extends Controller {
	public function index() {
		$product=Product::all();
		return view('frontend.pages.home',compact('product'));
	}
	
	public function shop(){
		$category=Category::all();
		$product_cate=Product::where('id_cate','=','$category->id')->count();
		// dd($product_cate);
		$product=Product::all();
		return view('frontend.pages.shop',compact('category','product','product_cate'));
	}
}

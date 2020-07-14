<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Product;
class FrontendController extends Controller {
	public function index() {
		$category_pro=Category::where([['status','=','1'],['parent_id','=','0']])->get();
		$category_pa=Category::where([['status','=','1'],['parent_id','=','1']])->get();
		// $category_pro=Category::wherehas('parentCate')->get();
		$product=Product::all();
		return view('frontend.pages.home',compact('product','category_pro','category_pa'));
	}
	
	public function shop(){
		$category_pro=Category::where([['status','=','1'],['parent_id','=','']])->get();
		$category_pa=Category::where([['parent_id','=','1']])->get();
		// $category_pro=Category::wherehas('parentCate')->get();
		$product=Product::all();
		return view('frontend.pages.shop',compact('product','category_pro','category_pa'));
	}
}

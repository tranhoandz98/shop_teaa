<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\Product_detail;
use App\Models\Img_pro;
use App\Models\Attr;
use App\Models\Feedback_pro;
use App\User;
use Auth;
class SearchController extends Controller
{
    /**
	 * [loc_data description]
	 * @param  Request $req [description]
	 * @return [type]       [description]
	 */
	public function loc_data(Request $req){
		$page= $req->number?$req->number:6;
		// dump($page);
		// dd($req->all());
		return redirect()->route('shop');
	}
	public function getsearch(Request $request){
		$product=Product::where('name','like','%'.$request->key.'%')->get();
		dd($product);
		return view('frontend.pages.search',compact('product'));

	}
}

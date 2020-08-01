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
class ShopController extends Controller
{
    /**
	 * [shop description]
	 * @return [type] [description]
	 */
	public function shop(){
		$category=Category::where([['status','=','1'],['type','=','1']])->orderby('name')->get();
		$attr=Attr::all();
		$products=Product::where('status','=','1')->paginate(6);
		foreach ($products as $key=> $product) {
			$details = isset($product->product_details)?$product->product_details:[];
			if (isset($details[0])){
				$product->setAttribute('price', $details[0]['price']);
				$product->setAttribute('discount', $details[0]['discount']);
				$product->setAttribute('id_detail', $details[0]['id']);
				$product->setAttribute('quantity', $details[0]['quantity']);
			}
			else{
				$product->setAttribute('price', '0');
				$product->setAttribute('discount', '0');
				$product->setAttribute('id_detail', '0');
				$product->setAttribute('quantity', '0');
			}
		}
		return view('frontend.pages.shop',compact('category','products','attr'));
	}
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
	/**
	 * [danh_muc description]
	 * @param  [type] $slug [description]
	 * @return [type]       [description]
	 */
	public function danh_muc($slug){
		$category=Category::where([['status','=','1'],['type','=','1']])->orderby('name')->get();
		$attr=Attr::all();
		$category_id=Category::where('slug','=',$slug)->first();
		$products=Product::where([['status','=','1'],['id_cate','=',$category_id->id]])->paginate(6);
		foreach ($products as $key=> $product) {
			$details = isset($product->product_details)?$product->product_details:[];
			if (isset($details[0])){
				$product->setAttribute('price', $details[0]['price']);
				$product->setAttribute('discount', $details[0]['discount']);
				$product->setAttribute('id_detail', $details[0]['id']);
				$product->setAttribute('quantity', $details[0]['quantity']);
			}
			else{
				$product->setAttribute('price', '0');
				$product->setAttribute('discount', '0');
				$product->setAttribute('id_detail', '0');
				$product->setAttribute('quantity', '0');
			}
		}
		return view('frontend.pages.shop',compact('category','products','attr','category_id'));
	}
	/**
	 * [product_detail description]
	 * @param  [type] $slug      [description]
	 * @param  [type] $id_detail [description]
	 * @return [type]            [description]
	 */
	public function product_detail($slug, $id_detail){
		// dd(Auth::user()->id);
		$attr=Attr::all();
		$product=Product::where('slug','=',$slug)->first();
		$product_detail=Product_detail::where('id_product','=',$product->id)->get();
		$img_pro=Img_pro::where('id_product','=',$product->id)->get();
		$product_detail_id=Product_detail::find($id_detail);
		$feedback_pro=Feedback_pro::where('id_product','=',$product->id)->get();
		$user=User::all();

		$product_news=Product::where([['status','=','1']])->orderby('created_at','desc')->limit(12)->get();
		// dd($product_news);
		foreach ($product_news as $key=> $item) {
			$details = isset($item->product_details)?$item->product_details:[];
			if (isset($details[0])){
				$item->setAttribute('price', $details[0]['price']);
				$item->setAttribute('discount', $details[0]['discount']);
				$item->setAttribute('id_detail', $details[0]['id']);
				$item->setAttribute('quantity', $details[0]['quantity']);
			}
			else{
				$item->setAttribute('price', '0');
				$item->setAttribute('discount', '0');
				$item->setAttribute('id_detail', '0');
				$item->setAttribute('quantity', '0');
			}
		}
		return view('frontend.pages.product_detail',compact('product','product_news','product_detail','product_detail_id','img_pro','attr','feedback_pro','user'));
	}
	public function comment(Request $req,$id,$id_user){
		Feedback_pro::create([
			'id_product'=>$id,
			'id_user'=>$id_user,
			'star'=>$req->rating,
			'content'=>$req->content,
		]);
		return redirect()->back();
	}
}

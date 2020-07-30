<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Wishlist;
class WishlistController extends Controller
{
    public function index() {
    	$wishlist=Wishlist::all();
		return view('frontend.pages.wishlist',compact('wishlist'));
	}

	public function add($id_user,$id_detail) {
		dump($id_user);
	dd($id_detail);
		return view('frontend.pages.wishlist');
	}
	public function remove() {
		return view('frontend.pages.wishlist');
	}
	public function destroy() {
		return view('frontend.pages.wishlist');
	}
}

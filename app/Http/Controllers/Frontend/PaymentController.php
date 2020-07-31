<?php

namespace App\Http\Controllers\Frontend;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Product_detail;
use App\Models\Img_pro;
use App\Models\Banner;
use App\Models\Admin;
use App\Models\Blog;
use App\Models\Attr;

use Illuminate\Http\Request;

class PaymentController extends Controller {
	/**
	 * [index description]
	 * @return [type] [description]
	 */
	public function index() {
 
		return view('frontend.pages.payment');
	}

}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Product_detail;
use App\Models\Feedback_pro;

class Product extends Model
{
	protected $guarded = [];

	public function categories()
	{
		return $this->belongsTo('App\Models\Category', 'id_cate');
	}
	public function product_details()
	{
		return $this->hasMany(Product_detail::class, 'id_product', 'id');
	}
	public function feedback_pros()
	{
		return $this->hasMany(Feedback_pro::class, 'id_product', 'id');
	}
}

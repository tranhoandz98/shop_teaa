<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Wishlist;

class Product_detail extends Model
{
	protected $guarded = [];

	public function attrs()
	{
		return $this->belongsTo(Attr::class, 'id_attr');
	}
	public function products()
	{
		return $this->belongsTo('App\Models\Product', 'id_product');
	}
	public function wishlists()
	{
		return $this->hasMany(Wishlist::class, 'id_product_detail', 'id');
	}
}

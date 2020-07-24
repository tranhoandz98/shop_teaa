<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Product_detail;

class Product extends Model
{
    protected $guarded = [];
    
    public function categories(){
    	return $this->belongsTo('App\Models\Category','id_cate');
    }
   public function product_details() {
  		return $this->hasMany(Product_detail::class, 'id_product', 'id');
  	}
}

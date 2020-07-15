<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Attr extends Model
{
    protected $guarded=[];
  public function product_details(){
    	return $this->hasMany('App\Models\Product_detail');
    }
}

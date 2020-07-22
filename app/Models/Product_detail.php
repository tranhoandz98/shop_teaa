<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product_detail extends Model
{
    protected $guarded=[];
  	
  	public function attrs(){
  		return $this->belongsTo(Attr::class,'id_attr');
  	}
  	public function products(){
  		return $this->belongsTo('App\Models\Product','id_product');
  	}
}

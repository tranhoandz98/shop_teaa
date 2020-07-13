<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product_detail extends Model
{
    protected $guarded=[];
  	
  	public function attrs(){
  		return $this->belongsTo('App\Models\Attr','id_attr');
  	}
}

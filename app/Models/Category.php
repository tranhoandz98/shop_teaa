<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Product;

class Category extends Model
{
   protected $guarded=[];
   
    public function parentCate(){
    	return $this->belongsTo('App\Models\Category','parent_id');
    }
     public function products(){
    	// return $this->hasMany(Product::class);
    	return $this->hasMany(Product::class, 'id_cate', 'id');
    }
}

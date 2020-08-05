<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Product;
use App\Models\Blog;

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
    public function blogs(){
    	// return $this->hasMany(Product::class);
    	return $this->hasMany(Blog::class, 'id_cate', 'id');
    }
}

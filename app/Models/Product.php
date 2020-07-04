<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Category;
class Product extends Model
{
    protected $guarded = [];
    public function category(){
    	return $this->belongTo('App\Modes\Category','id_cate');
    }
}

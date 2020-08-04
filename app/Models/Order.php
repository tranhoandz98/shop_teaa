<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;
class Order extends Model
{
     protected $guarded=[];
     public function users() {
          return $this->belongsTo(User::class, 'id_user', 'id');
        }
}

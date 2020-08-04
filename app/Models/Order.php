<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
     protected $guarded = [];
     public function users()
     {
          return $this->belongsTo(User::class, 'id_user', 'id');
     }
}

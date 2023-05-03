<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    public function status(){
        return $this->hasOne(Status::class, 'id', 'stt_id');
    }

    public function user(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }
    public function detailOrders(){
        return $this->hasMany(DetailOrder::class, 'order_id');
    }
}

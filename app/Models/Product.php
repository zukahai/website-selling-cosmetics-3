<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    public function typeProduct(){
        return $this->hasOne(TypeProduct::class, 'id', 'typeProduct_id');
    }
}

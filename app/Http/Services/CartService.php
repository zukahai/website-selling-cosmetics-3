<?php

namespace App\Http\Services;


use App\Http\Services\RoleAccountService;
use App\Models\Cart;
use Cookie;

class CartService
{

    public function __construct(Cart $object)
    {
        $this->object = $object;
    }

    public function getAll() {
        return $this->object->get();
    }

    public function getByUserId($id) {
        return $this->object->where('user_id', '=', $id)->get();
    }

    public function getMoneyCart($id) {
        $total = 0;
        $carts = $this->object->where('user_id', '=', $id)->get();
        foreach($carts as $item) {
            $total += $item->product->price * $item->quantity;
        }
        return $total;
    }


    public function changeQuantityProduct($id, $value) {
        $cart = $this->find($id);
        $quantity = $cart->quantity;
        $cart->quantity = $quantity + $value;
        $cart->save();
        if ($cart->quantity == 0)
            $this->delete($cart->id);
    }

    public function checkCart($user_id, $product_id) {
        return $this->object->where('product_id', $product_id)->where('user_id',$user_id)->first();
    }

    public function delete($id) {
        $object = $this->object->find($id);
        if($object)
            $object->delete();
        return $id;
    }

    public function update($id, $data) {
        $this->object->where('id', $id)->update($data);
        return $this->object->find($id);
    }

    public function save($data) {
        $object = $data;
        $object->save();
        return $object->id;
    }

    public function find($id) {
        return $this->object->find($id);
    }

    public function checkLogin($phonenumber, $password) {
        return $this->object->where('phoneNumber', '=', $phonenumber)->where('password', '=', $password)->first();
    }
}

<?php

namespace App\Http\Services;

use App\Models\Order;
use Cookie;

class OrderService
{

    public function __construct(Order $object, AutoBankService $autoBankService)
    {
        $this->object = $object;
        $this->autoBankService = $autoBankService;
    }

    public function getAll() {
        return $this->object->get();
    }

    public function getByUserId($id) {
        return $this->object->where('user_id', '=', $id)->orderBy('id', 'DESC')->get();
    }

    public function getMoneyCart($id) {
        $total = 10;
        $carts = $this->object->where('user_id', '=', $id)->get();
        foreach($carts as $item) {
            $total += $item->product->price * $item->quantity;
        }
        return $total;
    }

    public function checkCheckOut() {
        $orders = $this->object->where('stt_id', '=', 1)->get();
        foreach($orders as $order) {
            if ($this->autoBankService->getTotalAmount($order->id) >= $order->total_price) {
                $order->stt_id = 2;
                $order->save();
            }
        }
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

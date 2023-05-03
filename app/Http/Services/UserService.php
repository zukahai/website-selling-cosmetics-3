<?php

namespace App\Http\Services;


use App\Http\Services\RoleAccountService;
use App\Models\User;
use Cookie;

class UserService
{

    public function __construct(User $object)
    {
        $this->object = $object;
    }

    public function getAll() {
        return $this->object->get();
    }

    public function findByPhoneNumber($phoneNumber) {
        return $this->object->where('phoneNumber', '=', $phoneNumber)->first();
    }

    public function randomPassword($user) {
        $user->password = rand(10000, 99999);
        $user->save();
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

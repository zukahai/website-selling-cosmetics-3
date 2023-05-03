<?php

namespace App\Http\Services;


use App\Http\Services\RoleAccountService;
use App\Models\Contact;

class ContactService
{

    public function __construct(Contact $object)
    {
        $this->object = $object;
    }

    public function getAll() {
        return $this->object->get();
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
}

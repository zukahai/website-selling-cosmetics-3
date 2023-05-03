<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreTypeProductRequest;
use App\Http\Requests\UpdateTypeProductRequest;
use App\Http\Services\TypeProductService;
use App\Models\TypeProduct;
use Illuminate\Http\Request;

class TypeProductController extends Controller
{
    public $data = [];

    public function __construct(TypeProductService $typeProductService) {
        $this->typeProductService = $typeProductService;
    }

    public function index()
    {
        $this->data['typeProducts'] = $this->typeProductService->getAll();
        return view('admin.pages.typeProduct.index', $this->data);
    }

    public function create()
    {
        return view('admin.pages.typeProduct.create');
    }

    public function solveCreate(Request $request)
    {
        $typeProduct = new TypeProduct();
        $typeProduct->name = $request->name;
        $this->typeProductService->save($typeProduct);
        return redirect(route('admin.typeProduct.index'));
    }

    public function delete($id)
    {
        $this->typeProductService->delete($id);
        return redirect(route('admin.typeProduct.index'));
    }


    public function update($id)
    {
        $typeProduct = $this->typeProductService->find($id);
        $this->data['typeProduct'] = $typeProduct;
        return view('admin.pages.typeProduct.update', $this->data);
    }

    public function solveUpdate(Request $request, $id = null)
    {
        $this->typeProductService->update($id, ['name'=>$request->name]);
        return redirect(route('admin.typeProduct.index'));
    }
}

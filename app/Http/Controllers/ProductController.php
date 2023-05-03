<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Http\Services\CartService;
use App\Http\Services\TypeProductService;
use App\Models\Product;
use App\Http\Services\ProductService;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public $data = [];

    public function __construct(ProductService $productService, TypeProductService $typeProductService, CartService $cartService)
    {
        $this->productService = $productService;
        $this->typeProductService = $typeProductService;
        $this->cartService = $cartService;
    }

    public function index(Request $request)
    {
        $this->data['products'] = $this->productService->getAll();
        if ($request->keyword != null)
            $this->data['products'] = $this->productService->findByKeyword($request->keyword);
        $this->data['typeProducts'] = $this->typeProductService->getAll();
        if (auth()->user() != null)
            $this->data['carts'] = $this->cartService->getByUserId(auth()->user()->id);
        return view('user.pages.product.index', $this->data);
    }

    public function detail($id)
    {
        $this->data['products'] = $this->productService->getAll();
        $this->data['product'] = $this->productService->find($id);
        if (auth()->user() != null)
            $this->data['carts'] = $this->cartService->getByUserId(auth()->user()->id);
        return view('user.pages.product.detail', $this->data);
    }

    public function indexAdmin()
    {
        $this->data['products'] = $this->productService->getAll();
        return view('admin.pages.product.index', $this->data);
    }

    public function createAdmin()
    {
        $this->data['typeProducts'] = $this->typeProductService->getAll();
        return view('admin.pages.product.create', $this->data);
    }

    public function solveCreateAdmin(Request $request)
    {
        if ($request->hasFile('image')) {
            $file = $request->image;
            $path = $file->store('images');
            $file->move(public_path('images'), $path);
        } else {
            return "Vui long chon file";
        }
        $product = new Product();
        $product->name = $request->name;
        $product->price = $request->price;
        $product->description = $request->description;
        $product->typeProduct_id = $request->typeProduct_id;
        $product->urlImage = $path;

        $this->productService->save($product);
        return redirect(route('admin.product.index'));
    }

    public function deleteAdmin($id = null)
    {
        $this->productService->delete($id);
        return redirect(route('admin.product.index'));
    }

    public function updateAdmin($id = null)
    {
        $product = $this->productService->find($id);
        $this->data['product'] = $product;
        $this->data['typeProducts'] = $this->typeProductService->getAll();
        return view('admin.pages.product.update', $this->data);
    }

    public function solveUpdateAdmin(Request $request, $id=null)
    {
        $product = $this->productService->find($id);
        $dataUpdate = [];
        $dataUpdate['name'] = $request->name;
        $dataUpdate['price'] = $request->price;
        $dataUpdate['description'] = $request->description;
        $dataUpdate['typeProduct_id'] = $request->typeProduct_id;
        $dataUpdate['urlImage'] = $product->urlImage;

        if ($request->hasFile('image')) {
            $file = $request->image;
            $path = $file->store('images');
            $file->move(public_path('images'), $path);
            $dataUpdate['urlImage'] = $path;
        }

        $this->productService->update($id, $dataUpdate);
        return redirect(route('admin.product.index'));
    }
}

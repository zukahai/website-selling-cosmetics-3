<?php

namespace App\Http\Controllers;

use App\Http\Services\CartService;
use App\Models\Cart;
use App\Http\Requests\StoreCartRequest;
use App\Http\Requests\UpdateCartRequest;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public $data = [];

    public function __construct(CartService $cartService)
    {
        $this->cartService = $cartService;
    }

    public function index()
    {
        $this->data['carts'] = $this->cartService->getByUserId(auth()->user()->id);
        $this->data['total'] = $this->cartService->getMoneyCart(auth()->user()->id);
        return view('user.pages.cart.index', $this->data);
    }

    public function pre($id = null) {
        $this->cartService->changeQuantityProduct($id, -1);
        return redirect(route('user.cart.index'));
    }

    public function next($id = null) {
        $this->cartService->changeQuantityProduct($id, 1);
        return redirect(route('user.cart.index'));
    }


    public function create(Request $request)
    {
        $cartOld = $this->cartService->checkCart(auth()->user()->id, $request->product_id);
        if ($cartOld == null) {
            $cart = new Cart();
            $cart->user_id = auth()->user()->id;
            $cart->product_id = $request->product_id;
            $cart->quantity = $request->quantity;
            $this->cartService->save($cart);
        } else {
            $quantity = $cartOld->quantity + $request->quantity;
            $cartOld->quantity = $quantity;
            $cartOld->save();
        }


        return redirect(route('user.cart.index'));
    }

    public function delete($id)
    {
        $this->cartService->delete($id);
        return redirect(route('user.product.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function show(Cart $cart)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function edit(Cart $cart)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCartRequest  $request
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCartRequest $request, Cart $cart)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cart $cart)
    {
        //
    }
}

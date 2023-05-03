<?php

namespace App\Http\Controllers;

use App\Http\Services\AutoBankService;
use App\Http\Services\BankService;
use App\Http\Services\CartService;
use App\Http\Services\DetailOrderService;
use App\Http\Services\OrderService;
use App\Http\Services\ProductService;
use App\Http\Services\TypeProductService;
use App\Models\Order;
use App\Models\DetailOrder;
use App\Http\Requests\StoreOrderRequest;
use App\Http\Requests\UpdateOrderRequest;

class OrderController extends Controller
{
    public $data = [];

    public function __construct(OrderService $orderService,
                                CartService $cartService,
                                DetailOrderService $detailOrderService,
                                BankService $bankService, AutoBankService $autoBankService)
    {
        $this->orderService = $orderService;
        $this->cartService = $cartService;
        $this->detailOrderService = $detailOrderService;
        $this->bankService = $bankService;
        $this->autoBankService = $autoBankService;
    }

    public function index()
    {
        $this->data['orders'] = $this->orderService->getByUserId(auth()->user()->id);
        if (auth()->user() != null)
            $this->data['carts'] = $this->cartService->getByUserId(auth()->user()->id);
        return view('user.pages.order.index', $this->data);
    }

    public function indexAdmin()
    {
        $this->data['orders'] = $this->orderService->getAll();
        return view('admin.pages.order.index', $this->data);
    }

    public function create() {
        $id = auth()->user()->id;
        $data = $this->cartService->getAll();
        if ($data->count() > 0) {
            $order = new Order();
            $order->user_id = $id;
            $order->stt_id = 1;
            $order->total_price = $this->cartService->getMoneyCart($id);
            $this->orderService->save($order);

            foreach($data as $item){
                $detailOrder = new DetailOrder();
                $detailOrder->product_id = $item->product_id;
                $detailOrder->order_id = $order->id;
                $detailOrder->quantity = $item->quantity;
                $detailOrder->current_price	= $item->product->price;
                $this->detailOrderService->save($detailOrder);
                $this->cartService->delete($item->id);
            }
        }

        return redirect(route('user.order.index'));

    }

    public function checkout($id = null)
    {
        $this->autoBankService->solveTransactions();
        $this->orderService->checkCheckOut();
        $order = $this->orderService->find($id);
        $bank = $this->bankService->getFirst();
        $this->data['bank'] = $bank;
        $this->data['order'] = $order;
        $this->data['urlQA'] = "https://api.vietqr.io/".$bank->shortName."/".$bank->number."/".$order->total_price."/ORDER".$order->id."/vietqr_net_2.jpg";
        if (auth()->user() != null)
            $this->data['carts'] = $this->cartService->getByUserId(auth()->user()->id);
        return view('user.pages.order.checkout', $this->data);
    }
}

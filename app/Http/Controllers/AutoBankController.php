<?php

namespace App\Http\Controllers;

use App\Http\Services\AutoBankService;
use App\Http\Services\OrderService;
use App\Http\Services\ProductService;
use App\Models\AutoBank;
use App\Http\Requests\StoreAutoBankRequest;
use App\Http\Requests\UpdateAutoBankRequest;

class AutoBankController extends Controller
{

    public $data = [];

    public function __construct(AutoBankService $autoBankService,
                                ProductService $cartService, OrderService $orderService){
        $this->autoBankService = $autoBankService;
        $this->cartService = $cartService;
        $this->orderService = $orderService;
    }

    public function index()
    {
        $this->data['transactions'] = collect($this->autoBankService->filtTransactions());
//        dd(collect($this->autoBankService->filtTransactions()));
        $this->autoBankService->solveTransactions();
        $this->orderService->checkCheckOut();
        return view('admin.pages.autoBank.index', $this->data);
    }

    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreAutoBankRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAutoBankRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AutoBank  $autoBank
     * @return \Illuminate\Http\Response
     */
    public function show(AutoBank $autoBank)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\AutoBank  $autoBank
     * @return \Illuminate\Http\Response
     */
    public function edit(AutoBank $autoBank)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateAutoBankRequest  $request
     * @param  \App\Models\AutoBank  $autoBank
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateAutoBankRequest $request, AutoBank $autoBank)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\AutoBank  $autoBank
     * @return \Illuminate\Http\Response
     */
    public function destroy(AutoBank $autoBank)
    {
        //
    }
}

<?php

namespace App\Http\Controllers;

use App\Http\Services\UserService;
use Illuminate\Http\Request;

class AdminController extends Controller
{

    public function home()
    {
        return redirect(route('admin.product.index'));
    }
}

<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\TypeProductController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\AutoBankController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\BlogController;
use Illuminate\Support\Facades\Route;

Route::prefix('/')->group(function(){
    Route::get('/', [UserController::class, 'home'])->name('user.home');
    Route::get('/about', [UserController::class, 'about'])->name('user.about');
    Route::get('/contact', [UserController::class, 'contact'])->name('user.contact');
    Route::prefix('/login')->group(function(){
        Route::get('/', [UserController::class, 'login'])->name('login');
        Route::post('/', [UserController::class, 'solveLogin'])->name('user.login.solveLogin');
        Route::post('/forgot-password', [UserController::class, 'forgotPassword'])->name('user.login.forgotPassword');
    });
    Route::prefix('/register')->group(function(){
        Route::get('/', [UserController::class, 'register'])->name('register');
        Route::post('/', [UserController::class, 'solveRegister'])->name('user.solveRegister');
    });
    Route::prefix('/product')->group(function(){
        Route::get('/', [ProductController::class, 'index'])->name('user.product.index');
        Route::get('/{id}', [ProductController::class, 'detail'])->name('user.product.detail');
    });
    Route::prefix('/cart')->middleware('auth')->group(function(){
        Route::get('/', [CartController::class, 'index'])->name('user.cart.index');
        Route::post('/create', [CartController::class, 'create'])->name('user.cart.create');
        Route::get('/delete/{id}', [CartController::class, 'delete'])->name('user.cart.delete');
        Route::get('/next/{id}', [CartController::class, 'next'])->name('user.cart.next');
        Route::get('/pre/{id}', [CartController::class, 'pre'])->name('user.cart.pre');
    });
    Route::prefix('/order')->middleware('auth')->group(function(){
        Route::get('/', [OrderController::class, 'index'])->name('user.order.index');
        Route::get('/create', [OrderController::class, 'create'])->name('user.order.create');
        Route::get('/checkout/{id}', [OrderController::class, 'checkout'])->name('user.order.checkout');
    });
    Route::prefix('/contact')->group(function(){
        Route::post('/create', [ContactController::class, 'create'])->name('user.contact.create');
    });
    Route::prefix('/blog')->group(function(){
        Route::get('/', [BlogController::class, 'index'])->name('user.blog');
        Route::get('/{id}', [BlogController::class, 'blogDetail'])->name('user.blog.detail');
    });
});

Route::prefix('/admin')->middleware('checkAdmin')->group(function(){
    Route::get('/', [AdminController::class, 'home'])->name('admin.home');
    Route::prefix('/product')->group(function(){
        Route::get('/', [ProductController::class, 'indexAdmin'])->name('admin.product.index');
        Route::get('/create', [ProductController::class, 'createAdmin'])->name('admin.product.create');
        Route::post('/create', [ProductController::class, 'solveCreateAdmin'])->name('admin.product.solveCreateAdmin');
        Route::get('/delete/{id}', [ProductController::class, 'deleteAdmin'])->name('admin.product.delete');
        Route::get('/update/{id}', [ProductController::class, 'updateAdmin'])->name('admin.product.update');
        Route::post('/update/{id}', [ProductController::class, 'solveUpdateAdmin'])->name('admin.product.solveUpdate');
    });
    Route::prefix('/type-product')->group(function(){
        Route::get('/', [TypeProductController::class, 'index'])->name('admin.typeProduct.index');
        Route::get('/create', [TypeProductController::class, 'create'])->name('admin.typeProduct.create');
        Route::post('/create', [TypeProductController::class, 'solveCreate'])->name('admin.typeProduct.solveCreate');
        Route::get('/delete/{id}', [TypeProductController::class, 'delete'])->name('admin.typeProduct.delete');
        Route::get('/update/{id}', [TypeProductController::class, 'update'])->name('admin.typeProduct.update');
        Route::post('/update/{id}', [TypeProductController::class, 'solveUpdate'])->name('admin.typeProduct.solveUpdate');
    });
    Route::prefix('/user')->group(function(){
        Route::get('/', [UserController::class, 'index'])->name('admin.user.index');
        Route::get('/block/{id}', [UserController::class, 'block'])->name('admin.user.block');
    });
    Route::prefix('/order')->group(function(){
        Route::get('/', [OrderController::class, 'indexAdmin'])->name('admin.order.index');
    });
    Route::prefix('/auto-bank')->group(function(){
        Route::get('/', [AutoBankController::class, 'index'])->name('admin.autoBank.index');
    });
    Route::prefix('/contact')->group(function(){
        Route::get('/', [ContactController::class, 'index'])->name('admin.contact.index');
    });
    Route::prefix('/blog')->group(function(){
        Route::get('/', [BlogController::class, 'indexAdmin'])->name('admin.blog.index');
        Route::get('/create', [BlogController::class, 'createAdmin'])->name('admin.blog.create');
        Route::post('/create', [BlogController::class, 'solveCreateAdmin'])->name('admin.blog.solvecreate');
        Route::get('/delete/{id}', [BlogController::class, 'deleteAdmin'])->name('admin.blog.delete');
    });
});


<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class checkAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if (auth()->user() == null)
            return redirect(route('login'))->with('danger', "Bạn cần đăng nhập");
        if (auth()->user()->role == 0)
            return redirect(route('user.home'))->with('warning', "Bạn không phải là admin");

        return $next($request);
    }
}

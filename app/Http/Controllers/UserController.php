<?php

namespace App\Http\Controllers;

use App\Http\Services\CartService;
use App\Http\Services\UserService;
use App\Models\User;
use Illuminate\Http\Request;
use App\Mail\SendOTP;
use Illuminate\Support\Facades\Mail;

class UserController extends Controller
{
    public $data = [];

    public function __construct(UserService $userService, CartService $cartService) {
        $this->userService = $userService;
        $this->cartService = $cartService;
    }

    public function home()
    {
        if (auth()->user() != null)
            $this->data['carts'] = $this->cartService->getByUserId(auth()->user()->id);
        return view('user.pages.orther.home', $this->data);
    }

    public function about()
    {
        if (auth()->user() != null)
            $this->data['carts'] = $this->cartService->getByUserId(auth()->user()->id);
        return view('user.pages.orther.about', $this->data);
    }

    public function contact()
    {
        if (auth()->user() != null)
            $this->data['carts'] = $this->cartService->getByUserId(auth()->user()->id);
        return view('user.pages.orther.contact', $this->data);
    }

    public function index()
    {
        $this->data['users'] = $this->userService->getAll();
        return view('admin.pages.user.index', $this->data);
    }

    public function login()
    {
        auth()->logout();
        return view('user.pages.login');
    }

    public function solveLogin(Request $request)
    {
        $request->validate(
            [
                'phoneNumber' => 'required',
                'password' => 'required',
            ],
            [
                'phoneNumber.required' => 'Vui lòng nhập sô điện thoại',
                'password.required' => 'Vui lòng nhập mật khẩu',
            ]
        );
        $phoneNumber = $request->phoneNumber;
        $password = $request->password;
        $user = $this->userService->checkLogin($phoneNumber, $password);

        if ($user != null) {
            if ($user->status == 1) {
                auth()->login($user);
                if ($user->role == 0)
                    return redirect(route('user.home'))->with('success', "Đăng nhập thành công!");
                else
                    return redirect(route('admin.home'));
            } else {
                return redirect(route('login'))->with('danger', "Tài khoản của bạn đã bị khoá!");
            }
        }
        return redirect(route('login'))->with('danger', "Số điện thoại hoặc mật khẩu không đúng");
    }

    public function register()
    {
        return view('user.pages.register');
    }

    public function solveRegister(Request $request)
    {
        $request->validate(
            [
                'phonenumber' => 'required|unique:users',
                'image' => 'required',
                'lastname' => 'required',
                'firstname' => 'required',
                'password' => 'required',
                'birthday' => 'required',
                'email' => 'required',
            ],
            [
                'phonenumber.required' => 'Vui lòng nhập sô điện thoại',
                'phonenumber.unique' => 'Số điện thoại đã được sử dụng',
                'lastname.required' => 'Vui lòng nhập họ',
                'firstname.required' => 'Vui lòng nhập tên',
                'password.required' => 'Vui lòng nhập mật khẩu',
                'birthday.required' => 'Vui lòng chọn ngày sinh',
                'image.required' => 'Vui lòng chọn ảnh',
            ]
        );
        $user = new User();
        $user->firstName = $request->firstname;
        $user->lastName = $request->lastname;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->birthDate = $request->birthday;
        $user->phoneNumber = $request->phonenumber;
        $user->streetName = $request->streetName;
        $user->streetNumber = $request->streetNumber;
        $user->district = $request->district;
        $user->city = $request->city;
        $user->urlAvata = "abc";
        $user->status = 1;
        $user->role = 0;

        if ($request->hasFile('image')) {
            $file = $request->image;
            $path = $file->store('images');
            $file->move(public_path('images'), $path);
            $user->urlAvata = $path;
        }
        $this->userService->save($user);

        return redirect(route('login'));
    }

    public function block($id=null)
    {
        $user = $this->userService->find($id);
        $status = $user->status;
        $user->status = 1 - $status;
        $user->save();
        return redirect(route('admin.user.index'));
    }

    public function checkOTP() {
        $user = $this->userService->find(1);
        Mail::to('duchai2712@gmail.com')->send(new SendOTP($user, 1234));
        return "Basic Email Sent. Check your inbox.";
    }

    public function forgotPassword(Request $request) {
        $phoneNumber = $request->phoneNumber;
        $user = $this->userService->findByPhoneNumber($phoneNumber);
        if ($user == null)
            return redirect(route('login'))->with('warning', "Số điện thoại không tồn tại!");
        $this->userService->randomPassword($user);
        $email = $user->email;
        Mail::to($email)->send(new SendOTP($user));
        return redirect(route('login'))->with('success', "Mật khẩu đã được gửi vào hộp thư ".$email);
    }
}

<?php

namespace App\Http\Controllers;

use App\User;
use Auth;
use Illuminate\Http\Request;

class HomeController extends Controller {
	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	// public function __construct()
	// {
	//     $this->middleware('auth');
	// }

	/**
	 * Show the application dashboard.
	 *
	 * @return \Illuminate\Contracts\Support\Renderable
	//  */
	// public function index()
	// {
	//     return view('home');
	// }
	public function dangky() {
		return view('frontend.pages.register');
	}
	public function postDangky(Request $request) {
		$request->validate([
			'name' => 'required',
			'email' => 'required|unique:users',
			'password' => 'required|min:8',
			're_password' => 'required|min:8',
			'phone' => 'required|unique:users',
			'birthday' => 'required',
			'address' => 'required',
		], [
			'name.required' => 'Tên không được bỏ trống',
			'email.required' => 'Email không được bỏ trống',
			'email.unique' => 'Email đã tồn tại',
			'password.required' => 'Mật khẩu không được bỏ trống',
			're_password.required' => 'Mật khẩu không được bỏ trống',
			'password.min' => 'Mật khẩu phải có đủ 8 ký tự không được bỏ trống',
			're_password.min' => 'Mật khẩu phải có đủ 8 ký tự không được bỏ trống',
			'phone.required' => 'Số điện thoại không được bỏ trống',
			'phone.unique' => 'Số điện thoại đã tồn tại',
			'birthday.required' => 'Ngày sinh không được bỏ trống',
			'address.required' => 'Địa chỉ không được bỏ trống',
		]);
		User::create([
			'name' => $request->name,
			'email' => $request->email,
			'password' => bcrypt($request->password),
			'phone' => $request->phone,
			'birthday' => $request->birthday,
			'address' => $request->address,
		]);
		return redirect()->route('dang-nhap')->with('success', 'Đăng ký thành công');
	}
	public function dangnhap() {
		return view('frontend.pages.login');
	}
	public function postDangnhap(Request $request) {
		// dd($request->all());
		// dd(Auth::attempt($request->only('email','password')));
		if (Auth::attempt($request->only('email', 'password'))) {
			return redirect()->route('home')->with('success', 'Đăng nhập thành công');
		} else {
			return redirect()->back()->with('error', 'Tài khoản hoặc mật khẩu
                không đúng');
		}
	}
	public function dangxuat() {
		Auth::logout();
		return redirect()->route('home')->with('success', 'Đăng xuất thành công');
	}
	public function profile() {

		return view('frontend.pages.profile');
	}
}

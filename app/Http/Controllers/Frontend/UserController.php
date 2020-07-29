<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Rules\MatchOldPassword;
use App\User;
use Auth;
use Hash;

class UserController extends Controller
{
	public function profile($id) {
		$user=User::find($id);
		return view('frontend.user.profile',compact('user'));
	}
	public function post_profile(Request $request,$id) {
		$user=User::find($id);
		// dd($request->all());
		if(!isset($request->image)){
			$file_name=$user->avatar;
		}
		else{
			unlink('public/uploads/Users/'.$user->avatar);
			$file_name = time().$request->image->getClientOriginalName();
        // đẩy file vào thư mục uploads
			$request->image->move(base_path('public/uploads/Users'),$file_name);
		}
		$user->update([
			'name' => $request->name,
			'avatar' => $file_name,
			'email' => $request->email,
			'phone' => $request->phone,
			'birthday' => $request->birthday,
			'address' => $request->address,
		]);
		return redirect()->back()->with('success','Cập nhật thông tin tài khoản thành công');
	}
	public function change_pass($id) {
		$user=User::find($id);
		return view('frontend.user.change_pass',compact('user'));
	}

	public function post_change_pass(Request $request,$id) {
		$user=User::find($id);
		$request->validate([

            'password' => ['required','min:8', new MatchOldPassword],

            'new_password' => ['required','min:8'],

            'r_password' => ['required','same:new_password','min:8'],

        ],[
			'password.required' => 'Mật khẩu không được bỏ trống',
			'password.min' => 'Mật khẩu phải có đủ 8 ký tự',
			'r_password.required' => 'Mật khẩu không được bỏ trống',
			'r_password.min' => 'Mật khẩu phải có đủ 8 ký tự',
			'r_password.same' => 'Mật khẩu không trùng khớp',
			'new_password.required' => 'Mật khẩu không được bỏ trống',
			'new_password.min' => 'Mật khẩu phải có đủ 8 ký tự',
		]);
		$user->update([
			'password' => bcrypt($request->new_password),
		]);
		return redirect()->back()->with('success','Cập nhật mật khẩu thành công');
	}

}

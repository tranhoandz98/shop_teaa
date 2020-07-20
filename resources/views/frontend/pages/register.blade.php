@extends('frontend.master')
@section('title','Trang đăng ký')
@section('main')
<div class="shop-area pt-110 bg-gray">
	<div class="breadcrumb-area bg-12 text-center">
            <div class="container">
                <h1>Đăng ký tài khoản</h1>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('dang-ky') }}">Đăng ký</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    {{-- <hr> --}}
    <div class="container mt-25">

        <form method="POST" action="">
            @csrf

            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="name">Họ và tên</label>
                        <input type="text" class="form-control" placeholder="Nhập họ và tên" id="name" name="name">
                            @error('name')
                            <span class="text-red">{{$message}}</span>
                            @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                         @error('email')
                            <span class="text-red">{{$message}}</span>
                            @enderror
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="password" >Mật khẩu</label>
                        <input type="password" class="form-control" id="password" name="password"  placeholder="Nhập mật khẩu">
                         @error('password')
                            <span class="text-red">{{$message}}</span>
                            @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="re_password">Nhập lại mật khẩu</label>
                        <input type="password" class="form-control" id="re_password" name="re_password" placeholder="Nhập lại mật khẩu">
                         @error('re_password')
                            <span class="text-red">{{$message}}</span>
                            @enderror
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="phone">Số điện thoại</label>
                        <input type="tel" class="form-control" name="phone" id="phone" placeholder="Nhập số điện thoại">
                         @error('phone')
                            <span class="text-red">{{$message}}</span>
                            @enderror
                    </div>
                </div>
                <div class="col">
                    <label for="">Giới tính</label>
                    <div class="radio">
                       <label>
                           <input type="radio" name="gender" id="input" value="1" checked="checked">
                           Nam
                       </label>
                       <label>
                           <input type="radio" name="gender" id="input" value="0">
                           Nữ
                       </label>
                   </div>
               </div>
           </div>
           <div class="row">
             <div class="col">
                <div class="form-group">
                    <label for="address" class="">Địa chỉ:</label>
                        {{-- <textarea name="address" id="textarea" class="form-control" rows="2">
                        </textarea> --}}
                        <input type="text" class="form-control" id="address" name="address" placeholder="1 Hoàng Quốc Việt, Hà Nội">
                         @error('address')
                            <span class="text-red">{{$message}}</span>
                            @enderror
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="birthday">Sinh nhật</label>
                    <input type="date" class="form-control" id="birthday" name="birthday">
                     @error('birthday')
                            <span class="text-red">{{$message}}</span>
                            @enderror
                </div>
            </div>
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Remember me</label>
        </div>
        <button type="submit" class="btn btn-success">Đăng ký</button>

    </form>
    <div class="mt-2 ">
        <div>
            <p>Already have an account ? <a href="auth-login.html" class="font-weight-medium text-primary"> Login</a> </p>
        </div>
    </div>
    <!--End of Register Form-->
</div>
</div>

@stop
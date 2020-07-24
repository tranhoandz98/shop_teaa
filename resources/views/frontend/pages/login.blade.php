@extends('frontend.master')
@section('title','Trang đăng nhập')
@section('main')
<div class="breadcrumb-area bg-12 text-center">
            <div class="container">
                <h1>Đăng nhập</h1>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('dang-nhap') }}">Đăng nhập</a></li>
                    </ul>
                </nav>
            </div>
        </div>
<div class="shop-area pt-25 bg-gray">
	{{-- <hr> --}}

	<div class="container col-md-6">
		@if(Session::has('error'))
	<div class="alert alert-success alert-dismissible fade show" role="alert">
		{{Session::get('error')}}
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">×</span>
		</button>
	</div>
	@endif
		<form method="POST" action="">
			@csrf
			<div class="form-group">
				<label for="email">Email </label>
				<input type="email" class="form-control" id="email" {{-- aria-describedby="emailHelp" --}} placeholder="Enter email" name="email">
				{{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
				@error('email')
				<span class="text-red">{{$message}}</span>
				@enderror
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" class="form-control" id="password" placeholder="Password" name="password">
				@error('password')
				<span class="text-red">{{$message}}</span>
				@enderror
			</div>
			<div><a href="" class="text-primary">Quên mật khẩu?</a></div>
			<div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Remember me</label>
			</div>
			<button type="submit" class="btn btn-success">Đăng nhập</button>
			
		</form>
		<!--End of Register Form-->
	</div>
</div>
@stop
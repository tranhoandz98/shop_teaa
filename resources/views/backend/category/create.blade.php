@extends('backend.master')
@section('title','Thêm mới danh mục')
@section('namepage','Danh mục')
@section('main')

	<div class="card">
		<div class="card-body">
			{{-- <h4 class="card-title text-red">Thêm mới sản phẩm</h4> --}}
			<form action="{{route('category.store')}}" method="POST" role="form">
				@csrf
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="name">Tên danh mục</label>
							<input type="text" class="form-control" id="name" placeholder="Nhập tên danh mục" name="name" onkeyup="ChangeToSlug()">
							@error('name')
							<span class="text-red">{{$message}}</span>
							@enderror
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="slug">Slug</label>
							<input type="text" class="form-control" id="slug" placeholder="Slug"  name="slug">
							@error('slug')
							<span class="text-red">{{$message}}</span>
							@enderror
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="">Loại danh mục</label>
							<div class="radio">
								<div class="row">
									<div class="col-md-6">
										<label>
											<input type="radio" name="type" id="input" value="1" checked="checked">
											Danh mục sản phẩm
										</label>
									</div>
									<div class="col-md-6">
										<label>
											<input type="radio" name="type" id="input" value="0">
											Danh mục tin tức
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="">Status</label>
							<div class="radio">
								<div class="row">
									<div class="col-md-2">
										<label>
											<input type="radio" name="status" id="input" value="1" checked="checked">
											Hiện
										</label>
									</div>
									<div class="col-md-3">
										<label>
											<input type="radio" name="status" id="input" value="0">
											Ẩn
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<label for="">Danh mục cha</label>
						<div class="form-group">
							<select class="custom-select" id="classCoverageDistribution" aria-label="Example select with button addon" name="parent_id">
								<option value="0">---Không---</option>
								@foreach ($category as $value)
								<option value="{{$value->id}}">{{$value->name}}</option>
								@endforeach
							</select>
						</div>
					</div>
				</div>
				<button class="btn btn-primary" type="submit">Thêm mới</button>
			</form>
		</div>
	</div>
	<!-- end card -->

@stop
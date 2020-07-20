@extends('backend.master')
@section('title','Thuộc tính sản phẩm')
@section('main')

<div class="row">
	<div class="col-12">
		<div class="card">
			@if(Session::has('success'))
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				{{Session::get('success')}}
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			@endif
			<div class="card-body">
				<div class="row">
					<div class="col-sm-4">
						<!-- <div class="text-sm-left">
							<a href="{{route('attr.create')}}" class="btn btn-success btn-rounded waves-effect waves-light mb-2 mr-2"><i class="mdi mdi-plus mr-1"></i>Thêm mới danh mục</a>
						</div> -->
						<form method="POST" action="{{route('attr.store')}}">
							@csrf
							<h4>Thêm mới thuộc tính</h4>
							<div class="form-row">
								<div class="col">
									<div class="form-group">
										<label>Thuộc tính </label>
										<select name="name" id="input" class="form-control" required="required">
											<option value="khoi-luong">Khối lượng</option>
											<option value="size">Size</option>
										</select>
									{{-- 	<input type="text" class="form-control" readonly="" name="name" value="size" > --}}
									</div>
									<!-- <select name="name" id="attr" class="form-control">
										<option value="1">Size</option>
										<option value="2">Color</option>
									</select> -->
								</div>
								<div class="col"> 
									<div class="form-group">
										<label>Giá trị</label>
										<div class="input-group " id="size" >
											<input type="text" class="form-control input-lg" name="value" >
										</div>
										<!-- <div class="input-group colorpicker-default colorpicker-element" title="Using format option" data-colorpicker-id="2" id="color">
											<input type="text" class="form-control input-lg" name="value" value="#ccc">
											<span class="input-group-append">
												<span class="input-group-text colorpicker-input-addon" data-original-title="" title="" tabindex="0" aria-describedby="popover416910"><i style="background: rgb(96, 106, 134);"></i></span>
											</span>
										</div> -->
										@error('value')
								<span class="text-red">{{$message}}</span>
								@enderror
									</div>
								</div>
								

							</div>
							<button class="btn btn-success" type="submit">Thêm mới</button>
						</form>
					</div>
					<div class="col-sm-8">
						<table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline" role="grid" aria-describedby="datatable-buttons_info">
							<thead>
								<tr role="row">
									<th class="sorting">STT</th>
									<th class="sorting">Thuộc tính</th>
									<th class="sorting">Giá trị</th>
									<th class="sorting">Hành động</th>
								</tr>
							</thead>
							<tbody>
								@foreach($attr as $value)
								<tr>
									<td>{{$loop->index +1}}</td>
									<td>{{$value->name}}</td>
									<td>{{$value->value}}</td>
									<td>
											
											<div class="row">
											<div class="col">
												<!-- Sửa -->
												<a href="{{route('attr.edit',$value->id)}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Sửa"><i class="mdi mdi-pencil btn-success btn "></i></a>
											</div>
											<div class="col">
												<!-- Xóa -->
												<form action="{{route('attr.destroy',$value->id)}}" method="POST">
													@csrf
													@method('DELETE')
													<button class="btn btn-danger mdi mdi-close" onclick="return confirm('Xóa danh mục -{{$value->name}}- không?')" type="submit" title="" data-original-title="Xóa" data-toggle="tooltip">
													</button>

												</form>
											</div>
										</div>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
</div> <!-- end col -->

@stop
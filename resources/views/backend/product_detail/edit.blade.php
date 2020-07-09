@extends('backend.master')
@section('title','Thuộc tính sản phẩm')
@section('main')

@if(Session::has('success'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
	{{Session::get('success')}}
	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
		<span aria-hidden="true">×</span>
	</button>
</div>
@endif
<div class="row">
	<div class="col-12">
		<div class="card">
			
			<div class="card-body">
				<h4>Thuộc tính của sp: {{$product->name}}</h4>
				<h4>Code: {{$product->sku}}</h4>
				{{-- Nút thêm input --}}
				{{-- form thêm nhiều attr cùng lúc
				<div class="row">
					<input type="text" class="form-control col mb-2 mr-2 bg-success"  readonly="" value="SKU"/> 
					<input type="text" class="form-control col mb-2 mr-2 bg-success"  readonly="" value="Size"/>
					<input type="text" class="form-control col mb-2 mr-2 bg-success"  readonly="" value="Price"/>
					<input type="text" class="form-control col mb-2 mr-2 bg-success"  readonly="" value="Discount"/>
					<input type="text" class="form-control col mb-2 mr-2 bg-success"  readonly="" value="Quantity"/>
					<input type="text" class="form-control col mb-2 mr-2 bg-success"  readonly="" value="Tuỳ chọn"/>
				</div>

				<form action="{{route('product_detail.update',$product->id)}}" method="POST">
					@csrf
					@method('PUT')
					<div class="field_wrapper">
						<div class="row">
							<input type="text" class="form-control col mb-2 mr-2" placeholder="Sku" name="sku[]" value="{{$product->sku}}"/>
							<select name="size[]" id="input" class="form-control col mb-2 mr-2" >
								<option value="">--Size--</option>
								@foreach($attr as $value)
								<option value="{{$value->id}}">{{$value->value}}</option>
								@endforeach
							</select>
							<input type="text" class="form-control col mb-2 mr-2" placeholder="Size" name="size[]" value=""/>
							<input type="text" class="form-control col mb-2 mr-2" placeholder="Price" name="price[]" value=""/>
							<input type="text" class="form-control col mb-2 mr-2" placeholder="Discout" name="discount[]" value=""/>
							<input type="text" class="form-control col mb-2 mr-2" placeholder="Quantity" name="quantity[]" value=""/>
							<a href="javascript:void(0);" class="add_button col mb-2 mr-2" title="Add field"><img src=""/>Thêm</a>
						</div>
					</div>
					<div class="form-group row">
						<button type="submit" class="btn btn-info">Thêm mới</button>
					</div>
				</form> --}}
				<form action="{{route('product_detail.update',$product->id)}}" method="POST">
					@csrf
					@method('PUT')
					<div class="row">
						<div class="form-group col">
							<label for="sku">SKU</label>
							<input type="text" class="form-control " placeholder="Sku" id="sku"name="sku" value="{{$product->sku}}"/>
							@error('sku')
							<span class="text-red">{{$message}}</span>
							@enderror
						</div>

						<div class="form-group  col">
							<label for="size">Size</label><a href="{{route('attr.index')}}" class="">Thêm</a>
							<select name="size" id="input" class="form-control " >
								<option value="">--Size--</option>
								@foreach($attr as $value)
								<option value="{{$value->id}}">{{$value->value}}</option>
								@endforeach
							</select>
							@error('size')
							<span class="text-red">{{$message}}</span>
							@enderror
						</div>
						<div class="form-group  col">
							<label for="price">Price</label>
							<input type="text" class="form-control " placeholder="Price" name="price" value=""/>
							@error('price')
							<span class="text-red">{{$message}}</span>
							@enderror
						</div>
						<div class="form-group  col">
							<label for="discount">Discount</label>
							<input type="text" class="form-control " placeholder="Discount" name="discount" value=""/>
							@error('discount')
							<span class="text-red">{{$message}}</span>
							@enderror
						</div>
						<div class="form-group  col">
							<label for="quantity">Quantity</label>
							<input type="text" class="form-control " placeholder="Quantity" name="quantity" value=""/>
							@error('quantity')
							<span class="text-red">{{$message}}</span>
							@enderror
						</div>
						<div class="form-group col">
							<label for="">Status</label>
							<div class="radio">
								<label>
									<input type="radio" name="status" id="input" value="1" checked="checked">
									Hiện
								</label>
								<label>
									<input type="radio" name="status" id="input" value="0">
									Ẩn
								</label>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<button type="submit" class="btn btn-info">Thêm mới</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
</div>
<div class="row">					
	<div class="col-12">
		<div class="card text-center">
			<div class="card-body">
				<div class="row">
					<div class="col">
						<table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline" role="grid" aria-describedby="datatable-buttons_info">
							<thead>
								<tr role="row">
									<th class="sorting">STT</th>
									<th class="sorting">SKU</th>
									<th class="sorting">Size</th>
									<th class="sorting">Price</th>
									<th class="sorting">Discount</th>
									<th class="sorting">Quantity</th>
									<th class="sorting">Status</th>
									<th class="sorting">Hành động</th>
								</tr>
							</thead>
							<tbody>
								@foreach($product_detail as $value)
								<tr>
									<td>{{$loop->index +1}}</td>
									<td>{{$value->sku}}</td>
									<td>{{$value->attrs->value}}</td>
									<td>{{$value->price}}</td>
									<td>{{$value->discount}}</td>
									<td>{{$value->quantity}}</td>
									<td>{{$value->status}}</td>
									<td>
										<form action="{{route('product_detail.destroy',$value->id)}}" method="POST">
											@csrf
											@method('DELETE')
											<button class="btn btn-danger mdi mdi-close" onclick="return confirm('Xóa danh mục -{{$value->name}}- không?')" type="submit" title="" data-original-title="Xóa" data-toggle="tooltip">
											</button>
										</form>
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
	
</div>

@stop
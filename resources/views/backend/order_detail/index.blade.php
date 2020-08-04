@extends('backend.master')
@section('title','Chi tiết đơn hàng')
@section('namepage','Đơn hàng')
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
			<a href="{{route('order.index')}}" class="btn btn-success col-5">Quay lại danh sách đơn hàng</a>
			<div class="card-body">
				<form action="" method="POST">
					@csrf
					<div class="row">					
						<div class="form-group col">
							<label for="">Status</label>
							<label class="sr-only" for="">Trạng thái</label>
							<select name="status" id="input" class="form-control" required="required">
								<option value="0">Chưu Xử lý</option>
								<option value="1">Đã xử lý</option>
								<option value="2">Đang Giao hàng</option>
								<option value="3">Đã hoàn thành</option>
								<option value="4">Hủy</option>
							</select>
								
							</div>
						</div>
					</div>
					<div class="form-group row ml-3">
						<button type="submit" class="btn btn-info">Cập nhật</button>
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
									<th class="sorting">Mã đơn hàng</th>
									<th class="sorting">Tên sản phẩm</th>
									<th class="sorting">Price (đ)</th>
									<th class="sorting">Quantity</th>
									<th class="sorting">Thành tiền</th>

									
								</tr>
							</thead>
							<tbody>
								@foreach($order_detail as $value)
								<tr>
									<td>{{$loop->index +1}}</td>
									<td>{{$value->order->id}}</td>
									<td>{{$value->product_details->products->name}}</td>
									<td>{{number_format($value->price)}} đ</td>
									<td>{{$value->quantity}}</td>
									<td>{{number_format($value->price*$value->quantity)}} đ</td>
									
								</tr>
								
								@endforeach
							
								<tr>
									<td colspan="5">Phí ship</td>
									<td>{{$subtotal>0?'20000':'0'}} đ</td>
								</tr>
								<tr>
									<td colspan="5">Tổng tiền</td>
									<td>{{$subtotal}} đ</td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>

@stop
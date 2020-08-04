@extends('backend.master')
@section('title','Đơn hàng')
@section('namepage','Đơn hàng')
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
					
					<div class="col-sm-12">
						<table id="datatable-buttons" class="table  table-bordered dt-responsive  dataTable no-footer  table-hover" role="grid" aria-describedby="datatable-buttons_info">
							<thead>
								<tr role="row">
									<th class="sorting">STT</th>
									<th class="sorting">Tên khách hàng</th>
									<th class="sorting">Tổng tiền</th>
									<th class="sorting">Địa chỉ giao hàng</th>
									<th class="sorting">Ghi chú</th>
									<th class="sorting">Trạng thái</th>
									<th class="sorting">Hành động</th>
								</tr>
							</thead>
							<tbody>
								@foreach($order as $value)
								<tr role="row" class="odd">
									<td class="dtr-control" tabindex="0">{{$loop->index+1}}</td>
									<td class="sorting_1">{{$value->users->name}}</td>
									<td class="sorting_1">{{$value->total_price}}</td>
									<td class="sorting_1">{{$value->address_ship}}</td>
									<td class="sorting_1">{{$value->note}}</td>
									<td>{!!($value->status==1)?'<span class="badge badge-pill badge-soft-success font-size-12">Hiện</span>':'<span class="badge badge-pill badge-soft-danger font-size-12">Ẩn</span>'!!}</td>
									<td>
										<div class="row">
											<div class="col">
												<a href="{{route('order_detail_backend',$value->id)}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="Chi tiết đơn hàng"><i class="mdi mdi-eye btn-info btn"></i></a>
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
@extends('backend.master')
@section('title','Thuộc tính sản phẩm')
@section('main')
{{-- <div class="row">
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
					<div class="col">
						<table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline" role="grid" aria-describedby="datatable-buttons_info">
							<thead>
								<tr role="row">
									<th class="sorting">STT</th>
									<th class="sorting">Tên thuộc tính</th>
									<th class="sorting">Giá trị</th>
									<th class="sorting">Hành động</th>
								</tr>
							{{-- </thead>
							<tbody>
								@foreach($attr as $value)
								<tr>
									<td>{{$loop->index +1}}</td>
									<td>{{$value->name}}</td>
									<td>{{$value->value}}</td>
									<td>
											<div class="col-md-3">
												<!-- Xóa -->
												<form action="{{route('attr.destroy',$value->id)}}" method="POST">
													@csrf
													@method('DELETE')
													<button class="btn btn-danger mdi mdi-close" onclick="return confirm('Xóa danh mục -{{$value->name}}- không?')" type="submit" title="" data-original-title="Xóa" data-toggle="tooltip">
													</button>

												</form>
											</div>
									</td>
								</tr>
								@endforeach
							</tbody> --}}
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> <!-- end col --> --}}

@stop
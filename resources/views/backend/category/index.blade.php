@extends('backend.master')
@section('title','Danh mục')
@section('main')

<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-sm-12">
						<div class="text-sm-left">
							<a href="{{route('category.create')}}" class="btn btn-success btn-rounded waves-effect waves-light mb-2 mr-2"><i class="mdi mdi-plus mr-1"></i>Thêm mới danh mục</a>
						</div>
					</div>
					<div class="col-sm-12">
						<table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline" role="grid" aria-describedby="datatable-buttons_info">
							<thead>
								<tr role="row">
									<th class="sorting">STT</th>
									<th class="sorting">Tên danh mục</th>
									<th class="sorting">Loại danh mục</th>
									<th class="sorting">Danh mục cha</th>
									<th class="sorting">Trạng thái</th>
									<th class="sorting">Ngày tạo</th>
									<th class="sorting">Hành động</th>
								</tr>
							</thead>
							<tbody>
								@foreach($category as $value)
								<tr role="row" class="odd">
									<td class="dtr-control" tabindex="0">{{$loop->index+1}}</td>
									<td class="sorting_1">{{$value->name}}</td>
									<td>{{($value->type==1) ?'Sản phẩm':'Tin tức'}}</td>
									<td>{{($value->parentCate)?$value->parentCate->name:'--'}}</td>
									<td>{!!($value->status==1)?'<span class="badge badge-pill badge-soft-success font-size-12">Hiện</span>':'<span class="badge badge-pill badge-soft-danger font-size-12">Ẩn</span>'!!}</td>
									<td>{{$value->created_at}}</td>
									<td>
										
										<div class="row">
											<div class="col-md-4">
												<!-- Sửa -->
												<a href="{{route('category.edit',$value->id)}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Sửa"><i class="mdi mdi-pencil btn-success btn "></i></a>
											</div>
											<div class="col-md-4">
												<!-- Xóa -->
												<form action="{{route('category.destroy',$value->id)}}" method="POST">
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
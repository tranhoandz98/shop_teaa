@extends('backend.master')
@section('title','Thêm mới cấu hình')
@section('main')
<div class="row">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title text-red">Thêm mới config</h4>
				<div class="container">
					<form action="{{route('config.store')}}" method="POST" role="form" enctype="multipart/form-data">
						@csrf					

								<div class="form-group">
									<label for="name">Cấu hình</label>
									<input type="text" class="form-control" id="name" placeholder="Nhập tiêu đề" name="name" onkeyup="ChangeToSlug()">
									@error('name')
									<span class="text-red">{{$message}}</span>
									@enderror
								</div>


								<div class="form-group">
									<label for="slug">Slug</label>
									<input type="text" class="form-control" id="slug" placeholder="Slug"  name="slug">
								</div>
								
										<div class="form-group">
											<label for="">Status</label>
											<div class="radio ml-3">
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
										<div class="form-group">
											<label for="value">Giá trị</label>
											<input type="text" class="form-control" id="value" placeholder="Giá trị"  name="value">
										</div>
	

							<button class="btn btn-info" type="submit">Thêm mới</button>

					</form>
				</div>

	
				</div>	<!-- end card body -->
			</div>	<!-- end card	 -->
		</div><!-- end col -->
	</div><!-- end row -->

	@stop 
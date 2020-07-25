@extends('backend.master')
@section('title','Thêm mới banner')
@section('namepage','Banner')
@section('main')
<div class="row">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title text-red">Thêm mới banner</h4>
				<div class="container">
					<form action="{{route('banner.store')}}" method="POST" role="form" enctype="multipart/form-data">
						@csrf					

								<div class="form-group">
									<label for="name">Banner</label>
									<input type="text" class="form-control" id="name" placeholder="Nhập tiêu đề" name="name" onkeyup="ChangeToSlug()">
									@error('name')
									<span class="text-red">{{$message}}</span>
									@enderror
								</div>


								<div class="form-group">
									<label for="slug">Slug</label>
									<input type="text" class="form-control" id="slug" placeholder="Slug"  name="slug">
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="get_image">Hình ảnh </label>
											<button type="button" class="btn btn-info" data-toggle="modal" data-target="#modalImage" id="get_image">
												<i class="bx bx-image-add"></i>
											</button>
											<input type="text" class="form-control hide" id="image" placeholder=""  name="image">
										</div>
										<div class="form-group">
											<div class="row" >
												<div class="card text-center col-md-12">
													<img class="card-img-top img" src="" id="img">
												</div>
											</div>
										</div>
										@error('image')
										<span class="text-red">{{$message}}</span>
										@enderror
									</div>
									<div class="col-md-6">
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
									</div>
								</div>
								
								{{-- end hình ảnh --}}




							<div class="form-group">
								<label for="description">Nội dung</label>
								<textarea name="content" id="description" class="form-control" rows="5" ></textarea>
							</div>

							<button class="btn btn-info" type="submit">Thêm mới</button>

					</form>
				</div>

					<!-- Modal 1 image-->
					<div class="modal fade" id="modalImage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl" role="document" >
							<div class="modal-content ">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLongTitle">Quản lý upload file</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<iframe src="{{url('filemanager')}}/dialog.php?type=1&field_id=image" class="upload-image"></iframe>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div> 			<!-- end modal -->


				</div>	<!-- end card body -->
			</div>	<!-- end card	 -->
		</div><!-- end col -->
	</div><!-- end row -->

	@stop 
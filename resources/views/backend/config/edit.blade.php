@extends('backend.master')
@section('title','Cập nhật cấu hình')
@section('namepage','Cấu hình')
@section('main')
<div class="row">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title text-red">Cập nhật cấu hình</h4>
				<div class="container">
					<form action="{{route('config.update',$config->id)}}" method="POST" role="form" enctype="multipart/form-data">
						@csrf					
                        @method('PUT')
								<div class="form-group">
									<label for="name"></label>
									<input type="text" class="form-control" id="name" placeholder="Nhập tiêu đề" name="name" onkeyup="ChangeToSlug()" value={{$config->name}}>
									@error('name')
									<span class="text-red">{{$message}}</span>
									@enderror
								</div>


								<div class="form-group">
									<label for="slug">Slug</label>
									<input type="text" class="form-control" id="slug" placeholder="Slug"  name="slug" value={{$config->slug}}>
								</div>						
								<div class="form-group">
									<label for="">Status</label>
									<div class="radio ml-3">
										<label>
											<input type="radio" name="status" id="input" value="1" {{($config->status)==1?'checked':''}}>
											Hiện
										</label>
										<label>
											<input type="radio" name="status" id="input" value="0"
											{{($config->status)==0?'checked':''}}>
											Ẩn
										</label>
									</div>
								</div>
								<div class="form-group">
									<label for="value">Giá trị</label>
									<input type="text" class="form-control" id="value" placeholder="Giá trị"  name="value" value={{$config->value}}>
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
@extends('backend.master')
@section('title','Thêm mới sản phẩm')
@section('main')
<div class="row">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title text-red">Thêm mới sản phẩm</h4>
				<form action="{{route('product.store')}}" method="POST" role="form" enctype="multipart/form-data">
					@csrf
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="name">Tên sản phẩm</label>
								<input type="text" class="form-control" id="name" placeholder="Nhập tên danh mục" name="name" onkeyup="ChangeToSlug()">

							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="slug">Slug</label>
								<input type="text" class="form-control" id="slug" placeholder="Slug"  name="slug">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="">Danh mục cha</label>
								<div class="form-group">
									<select class="custom-select" id="classCoverageDistribution" aria-label="Example select with button addon" name="id_cate">
										<option value="">---Trống---</option>
										@foreach($category as $value)
										<option value="{{$value->id}}">{{$value->name}}</option>
										@endforeach
									</select>
								</div>

							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
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
					</div>
					<div class="form-group">
						<label for="image">Hình ảnh </label>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalImage">
							<i class="bx bx-image-add"></i>
						</button>
						<input type="text" class="form-control" id="image" placeholder=""  name="image">
						<div class="row">
							<div class="card text-center col-md-3">
								<img class="card-img-top img" src="" id="img">
							</div>
						</div>

					</div>
					<div class="form-group">
						<label for="image">Ảnh mô tả sản phẩm</label>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalImages">
							<i class="bx bx-image-add"></i>
						</button>
						<input type="text" class="form-control" id="images" placeholder=""  name="images" multiple="multiple">
						<div class="row anh-nhieu">
							
						</div>
					</div>
					<div class="form-group">
						<label for="description">Mô tả sản phẩm</label>
						<textarea name="description" id="description" class="form-control" rows="5" ></textarea>
					</div>
					<div class="form-group">
						<p class="btn btn-primary col-md-6 disabled text-left">Thông tin SEO</p>
					</div>

					<div class="form-group">
						<label for="meta_title">Meta title</label>
						<input type="text" class="form-control" id="meta_title" placeholder=""  name="meta_title" multiple="multiple">
					</div>
					<div class="form-group">
						<label for="meta_key">Meta keyword</label>
						<input type="text" class="form-control" id="meta_key" placeholder=""  name="meta_keyword" multiple="multiple">
					</div>
					<div class="form-group">
						<label for="textarea">Meta description</label>
						<textarea name="meta_desc" id="textarea" class="form-control" rows="5"></textarea>
					</div>

					<button class="btn btn-primary" type="submit">Thêm mới</button>
				</form>					
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
								<iframe src="{{url('filemanager')}}/dialog.php?field_id=image" class="upload-image"></iframe>
							</div>
						</div>
					</div>
				</div> 			<!-- end modal -->

				<!-- Modal many image-->
				<div class="modal fade" id="modalImages" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl" role="document" >
						<div class="modal-content ">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLongTitle">Quản lý upload file</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<iframe src="{{url('filemanager')}}/dialog.php?field_id=images" class="upload-image"></iframe>
							</div>
						</div>
					</div>
				</div> 			<!-- end modal -->
			</div>	<!-- end card body -->
		</div>	<!-- end card	 -->
	</div><!-- end col -->
</div><!-- end row -->

@stop
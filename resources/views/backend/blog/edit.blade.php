@extends('backend.master')
@section('title','Thêm mới tin tức')
@section('namepage','Tin tức')
@section('main')
<div class="row">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title text-red">Cập nhật tin tức</h4>
				<div class="container">
					<form action="{{route('blog.update',$blog->id)}}" method="POST" role="form" enctype="multipart/form-data">
						@csrf					
						@method('PUT')
						<div class="form-group">
							<label for="name">Tiêu đề</label>
							<input type="text" class="form-control" id="name" placeholder="Nhập tiêu đề" name="name" onkeyup="ChangeToSlug()" value="{{$blog->name}}">
							@error('name')
							<span class="text-red">{{$message}}</span>
							@enderror
						</div>
						
						<div class="form-group">
							<label for="slug">Slug</label>
							<input type="text" class="form-control" id="slug" placeholder="Slug"  name="slug" value={{$blog->slug}}>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="">Danh mục tin tức</label>
									<div class="form-group">
										<select class="custom-select" id="classCoverageDistribution" aria-label="Example select with button addon" name="id_cate">
											<option value="">---Trống---</option>
											@foreach($category as $value)
											<option value="{{$value->id}}" {{($blog->id_cate==$value->id)?'selected':''}}>{{$value->name}}</option>
											@endforeach
										</select>
									</div>
									@error('id_cate')
									<span class="text-red">{{$message}}</span>
									@enderror
									
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="id_admin">Người đăng bài</label>				
									<input type="text" class="form-control" value="{{$blog->admins->name}}" readonly>		
								</div>
							</div>
							
						</div>
						
						<div class="row">
							<div class="col">
								<div class="form-group">
									<label for="get_image">Hình ảnh</label>
									<button type="button" class="btn btn-info" data-toggle="modal" data-target="#modalImage" id="get_image">
										<i class="bx bx-image-add"></i>
									</button>
									<input type="text" class="form-control hide" id="image" placeholder=""  name="image">
								</div>
								<div class="form-group">
									<div class="row" >
										<div class="card text-center col-md-3">
											<img class="card-img-top img" src="{{url('/public/uploads/')}}/{{$blog->image}}" id="img">
										</div>
									</div>
								</div>
								@error('image')
								<span class="text-red">{{$message}}</span>
								@enderror
								{{-- end hình ảnh --}}
							</div>
							<div class="col">
								<div class="form-group">
									<label for="">Status</label>
									<div class="radio">
										<label>
											<input type="radio" name="status" id="input" value="1" {{($blog->status)==1?'checked':''}}>
											Hiện
										</label>
										<label>
											<input type="radio" name="status" id="input" value="0"
											{{($blog->status)==0?'checked':''}}>
											Ẩn
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="description">Nội dung</label>
							<textarea name="content" id="description" class="form-control" rows="5" >
								{{$blog->content}}
							</textarea>
						</div>
						<div class="form-group">
							<p class="btn btn-info col disabled text-left">Thông tin SEO</p>
						</div>
						
						<div class="form-group">
							<label for="meta_title">Meta title</label>
							<input type="text" class="form-control" id="meta_title" placeholder=""  name="meta_title" multiple="multiple" value="{{$blog->meta_title}}">
						</div>
						<div class="form-group">
							<label for="meta_key">Meta keyword</label>
							<input type="text" class="form-control" id="meta_key" placeholder=""  name="meta_keyword" multiple="multiple" value="{{$blog->meta_keyword}}">
						</div>
						<div class="form-group">
							<label for="meta_desc">Meta description</label>
							<textarea name="meta_desc" id="meta_desc" class="form-control" rows="5" >{{$blog->meta_desc}}</textarea>
						</div>
						
						<button class="btn btn-info" type="submit">Cập nhật</button>
						
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
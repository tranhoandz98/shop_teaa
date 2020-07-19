@extends('backend.master')
@section('title','Thêm mới chi tiết sản phẩm')
@section('main')
<div class="row">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title text-red">Thêm mới chi tiết sản phẩm</h4>
				<form action="{{route('product_detail.store')}}" method="POST" role="form" enctype="multipart/form-data">
					@csrf
					<div class="row">
						<div class="col">		
                            <div class="form-group">
                                <label for="">Tên sản phẩm</label>
                                <select name="id_product" id="input" class="form-control" required="required">
                                    <option value="0">------Tên sản phẩm ------</option>
                                    @foreach($product as $value)
                                    <option value="{{$value->id}}">{{$value->name}}</option>
                                    @endforeach
                                </select>
                            </div>
						</div>
						
					</div>
                    <div class="form-group">
                        <label for="">Khối lượng</label>
                        <div class="checkbox">
                            @foreach($weight as $data)
                            <label>
                                <input type="checkbox" value="{{$data->id}}" name="weight[]">
                               <div style="width: 20px; height: 20px; background: {{$data->value}}"></div>
                            </label>
                            @endforeach

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Size</label>
                        <div class="checkbox">
                            @foreach($size as $data)
                            <label>
                               <label>{{$data->value}}</label>
                                <input type="checkbox" value="{{$data->id}}" name="size[]">
                            </label>
                            @endforeach
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="">Giá</label>
                        <input type="text" class="form-control" id="" placeholder="Input field" name="price">
                    </div>
                    <div class="form-group">
                        <label for="">Sale (%)</label>
                        <input type="text" class="form-control" id="" placeholder="Input field" name="discount">
                    </div>
                    <div class="form-group">
                        <label for="">Số lượng</label>
                        <input type="text" class="form-control" id="" placeholder="Input field" name="quantity">
                    </div>


							<div class="col-md-6">
								
									<label for="">Status</label>
									<div class="radio" class="row">
										<label>
											<input type="radio"  name="status" id="input" value="1" checked="checked">
											Hiện
										</label>
										<label>
											<input type="radio"  name="status" id="input" value="0">
											Ẩn
										</label>
									</div>
								
							</div>
						
					</div>				
						
					<div class="form-group">
						<label for="get_image">Hình ảnh </label>
						<button type="button" class="btn btn-info" data-toggle="modal" data-target="#modalImage" id="get_image">
							<i class="bx bx-image-add"></i>
						</button>
						<input type="text" class="form-control hide" id="image" placeholder=""  name="image">
					</div>
					<div class="form-group">
						<div class="row" >
							<div class="card text-center col-md-3">
								<img class="card-img-top img" src="" id="img">
							</div>
						</div>
					</div>
					@error('image')
					<span class="text-red">{{$message}}</span>
					@enderror
					{{-- end hình ảnh --}}
					<div class="form-group">
						<label for="get_images">Ảnh mô tả sản phẩm</label>
						<button type="button" class="btn btn-info" data-toggle="modal" data-target="#modalImages" id="get_images">
							<i class="bx bx-image-add"></i>
						</button>

					</div>
					<div class="form-group">
						<input type="text" class="form-control hide" id="images" placeholder=""  name="images" >
						<div class="row anh-nhieu form-group">

						</div>
					</div>

					@error('images')
					<span class="text-red">{{$message}}</span>
					@enderror
					{{-- end ảnh mô tả --}}
					<div class="form-group">
						<label for="description">Mô tả sản phẩm</label>
						<textarea name="description" id="description" class="form-control ckedit" rows="10" ></textarea>
					</div>
					<div class="form-group">
						<p class="btn btn-info col disabled text-left">Thông tin SEO</p>
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
						<label for="meta_desc">Meta description</label>
						<textarea name="meta_desc" id="meta_desc" class="form-control" rows="5"></textarea>
					</div>
					<button class="btn btn-info" type="submit">Thêm mới</button>
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
								<iframe src="{{url('filemanager')}}/dialog.php?type=1&field_id=image" class="upload-image"></iframe>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
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
								<iframe src="{{url('filemanager')}}/dialog.php?type=1&field_id=images" class="upload-image"></iframe>
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
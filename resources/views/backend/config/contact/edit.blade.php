@extends('backend.master')
@section('title', 'Cập nhật contact')
@section('namepage', 'Cấu hình')
@section('main')
    <div class="row">
        @if ($contact->name == 'contact')
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <div class="container">
                            <form action="{{ route('contact.update', $contact->id) }}" method="POST" role="form"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <h3>Sửa contact</h3>
                                <input type="hidden" class="form-control" id="name" placeholder="Tên contact" name="name"
                                    value="contact">
                                <input type="hidden" class="form-control" id="slug" placeholder="Slug" name="slug"
                                    value="contact">
                                <input type="hidden" class="form-control" readonly id="" placeholder="Slug" name="type"
                                    value="3">
                                <div class="form-group">
                                    <label for="">Status</label>
                                    <div class="radio ml-3">
                                        <label>
                                            <input type="radio" name="status" id="input" value="1"
                                                {{ $contact->status == 1 ? 'checked' : '' }}>
                                            Hiện
                                        </label>
                                        <label>
                                            <input type="radio" name="status" id="input" value="0"
                                                {{ $contact->status == 0 ? 'checked' : '' }}>
                                            Ẩn
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="description">Nội dung</label>
                                    <textarea name="value" id="description" class="form-control ckedit" rows="5">
                                        {!!  $contact->value !!}   
                                    </textarea>
                                </div>
                                <button class="btn btn-info" type="submit">Cập nhật</button>
                            </form>
                        </div>
                    </div>
                </div> <!-- end card body -->
            </div> <!-- end card	 -->
        @endif
        @if($contact->name == 'worktime')
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <div class="container">
                            <form action="{{ route('contact.update', $contact->id) }}" method="POST" role="form"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <h3>Sửa worktime</h3>
                                <input type="hidden" class="form-control" id="name" placeholder="Tên contact" name="name"
                                    value="worktime">
                                <input type="hidden" class="form-control" id="slug" placeholder="Slug" name="slug"
                                    value="worktime">
                                <input type="hidden" class="form-control" placeholder="Slug" name="type" value="3">
                                <div class="form-group">
                                    <label for="">Status</label>
                                    <div class="radio ml-3">
                                        <label>
                                            <input type="radio" name="status" id="input" value="1"
                                                {{ $contact->status == 1 ? 'checked' : '' }}>
                                            Hiện
                                        </label>
                                        <label>
                                            <input type="radio" name="status" id="input" value="0"
                                                {{ $contact->status == 0 ? 'checked' : '' }}>
                                            Ẩn
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="worktime">Nội dung</label>
                                    <textarea name="value" id="worktime" class="form-control ckedit" rows="5">
                                        {!!  $contact->value !!}   
                                    </textarea>
                                </div>
                                <button class="btn btn-info" type="submit">Cập nhật</button>
                            </form>
                        </div>
                    </div>
                </div> <!-- end card body -->
            </div> <!-- end card	 -->
        @endif
        @if ($contact->name == 'gmap')
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <div class="container">
                            <form action="{{ route('contact.update', $contact->id) }}" method="POST" role="form"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <h3>Sửa google map</h3>
                                <input type="hidden" class="form-control" id="name" placeholder="Tên contact" name="name"
                                    value="gmap">
                                <input type="hidden" class="form-control" id="slug" placeholder="Slug" name="slug"
                                    value="gmap">
                                <input type="hidden" class="form-control" readonly id="" placeholder="Slug" name="type"
                                    value="3">
                                <div class="">
                                    <div class="">
                                        <div class="form-group col-7">
                                            <label for="text-gmap"></label>
                                                    <input type="text" class="form-control" id="text-gmap"
                                                        placeholder="Nhập link" name="value" value="{{ $contact->value }}">
                                        </div>
                                    </div>
                                    <div id="gmap">
                                        <iframe
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.725809555813!2d105.80887841388765!3d21.00362539401416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac996d7831ff%3A0xfd2eed2d5abbd7ab!2zUXVhbiBOaMOibiwgSG_DoG4gS2nhur9tLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1596373920297!5m2!1svi!2s"
                                            width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""
                                            aria-hidden="false" tabindex="0"></iframe>
                                    </div>
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
                                <button class="btn btn-info" type="submit">Cập nhật</button>
                            </form>
                        </div>
                    </div>
                </div> <!-- end card body -->
            </div> <!-- end card	 -->
        @endif
    </div><!-- end col -->
    </div><!-- end row -->
@stop

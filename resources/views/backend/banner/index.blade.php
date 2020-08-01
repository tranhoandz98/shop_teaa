@extends('backend.master')
@section('title', 'Banner')
@section('namepage', 'Banner')
@section('main')

    <div class="row">
        <div class="col-12">
            <div class="card">
                @if (Session::has('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ Session::get('success') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                @endif
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="text-sm-left">
                                <a href="{{ route('banner.create') }}"
                                    class="btn btn-success btn-rounded waves-effect waves-light mb-2 mr-2"><i
                                        class="mdi mdi-plus mr-1"></i>Thêm mới banner</a>
                            </div>
						</div>
                        <div class="col-sm-12">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr >
                                        <th >STT</th>
                                        <th >Tên banner</th>
                                        <th >Tên title</th>
                                        <th >Hình ảnh</th>
                                        <th >Trạng thái</th>
                                        <th >Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($banner as $value)
                                        <tr>
                                            <td >{{ $loop->index + 1 }}</td>
                                            <td >{{ $value->name }}</td>
                                            <td >{{ $value->title }}</td>
                                            <td><img src="{{ url('public/uploads') }}/{{ $value->image }}" alt=""
                                                    width="100px"></td>
                                            <td>{!! $value->status == 1 ? '<span
                                                    class="badge badge-pill badge-soft-success font-size-12">Hiện</span>' :
                                                '<span class="badge badge-pill badge-soft-danger font-size-12">Ẩn</span>'
                                                !!}</td>
                                            <td>
                                                <div class="row">
                                                    <div class="ml-2">
                                                        <!-- Sửa -->
                                                        <a href="{{ route('banner.edit', $value->id) }}"
                                                            class=" text-primary" data-toggle="tooltip" data-placement="top"
                                                            title="" data-original-title="Sửa"><i
                                                                class="mdi mdi-pencil btn-success btn "></i></a>
                                                    </div>
                                                    <div class="ml-3">
                                                        <!-- Xóa -->
                                                        <form action="{{ route('banner.destroy', $value->id) }}"
                                                            method="POST">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button class="btn btn-danger mdi mdi-close"
                                                                onclick="return confirm('Xóa banner -{{ $value->name }}- không?')"
                                                                type="submit" title="" data-original-title="Xóa"
                                                                data-toggle="tooltip">
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

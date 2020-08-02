@extends('backend.master')
@section('title', 'contact')
@section('namepage', 'Cấu hình')
@section('main')
    @if (Session::has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ Session::get('success') }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
        </div>
    @endif
    @if($config->count()<3)
    <a href="{{ route('contact.create') }}" class="btn btn-success btn-rounded waves-effect waves-light mb-2 mr-2">
        <i class="mdi mdi-plus mr-1"></i>
        Thêm mới contact
    </a>
    @endif
    {{-- end buttton --}}
    <div class="row">
        <div class="col-xl-4">
            @if ($contact)
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="">
                            <h2 class="font-weight-bold">Contact</h2>
                        </div>
                        <div class="col">
                            <a href="{{ route('contact.edit', $contact->id) }}" class=" text-primary" data-toggle="tooltip"
                                data-placement="top" title="" data-original-title="Sửa"><i
                                    class="mdi mdi-pencil btn-success btn "></i></a>
                        </div>
                    </div>
                    <hr>
                    {!! $contact->value !!}
                </div>
            </div>
            @endif
            @if ($worktime)
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="">
                            <h2 class="font-weight-bold">Work time</h2>
                        </div>
                        <div class="col">
                            <a href="{{ route('contact.edit', $worktime->id) }}" class=" text-primary" data-toggle="tooltip"
                                data-placement="top" title="" data-original-title="Sửa"><i
                                    class="mdi mdi-pencil btn-success btn "></i></a>
                        </div>
                    </div>
                    <hr>
                    {!! $worktime->value !!}
                </div>
            </div>
            @endif
            <!-- end card -->
        </div>
        @if ($gmap)
        <div class="col-xl-8">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="">
                            <h2 class="font-weight-bold">Gmap</h2>
                        </div>
                        <div class="col">
                            <a href="{{ route('contact.edit', $gmap->id) }}" class=" text-primary" data-toggle="tooltip"
                                data-placement="top" title="" data-original-title="Sửa"><i
                                    class="mdi mdi-pencil btn-success btn "></i></a>
                        </div>
                    </div>
                    <hr>
                    {!! $gmap->value !!}
                </div>
            </div>
            <!-- end card -->
        </div>
        @endif
    </div>
@stop

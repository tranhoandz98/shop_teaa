  @extends('backend.master')
  @section('title','User')
  @section('namepage','User')
  @section('main')
  @if(Session::has('success'))
  <div class="alert alert-success alert-dismissible fade show" role="alert">
      {{Session::get('success')}}
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
       <span aria-hidden="true">×</span>
   </button>
</div>
@endif
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-centered table-nowrap" id="datatable">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Avatar</th>
                                <th>Tên</th>
                                <th>Giới tính</th>
                                <th>Phone / Email</th>
                                <th>Địa chỉ</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)
                                <tr>
                                <td>{{ $loop->index+1 }}</td>
                                <td><img src="{{ url('public/uploads/Users') }}/{{ $user->avatar }}" class="w-50"></td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->gender==1?'Nam':'Nữ' }}</td>
                                <td>
                                    <p class="mb-1">{{ $user->phone }}</p>
                                    <p class="mb-0">{{ $user->email }}</p>
                                </td>

                                <td>{{ $user->address }}</td>
                                <td>
                                        <a href="{{ route('user.destroy',$user->id) }}" class="dropdown-item"><i class="mdi mdi-trash-can font-size-16 text-danger mr-1"></i></a>
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
@stop
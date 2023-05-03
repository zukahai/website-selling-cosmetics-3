@extends('admin.layout.main')

@section('title')
    Admin - User
@endsection

@section('css')
    <style>
        .avata{
            width: 60px;
            height: 60px;
            object-fit: cover;
        }
    </style>
@endsection

@section('content')
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Users</h5>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Image</th>
                        <th scope="col">Name</th>
                        <th scope="col">Phone Number</th>
                        <th scope="col">Email</th>
                        <th scope="col">Role</th>
                        <th scope="col">Active</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($users as $item)
                        <tr>
                            <th scope="row">{{$item->id}}</th>
                            <td class="align-middle text-center">
                                <img src="{{url($item->urlAvata)}}" alt="..." class="rounded mx-auto d-block avata">
                            </td>
                            <td>{{$item->firstName}} {{$item->lastName}}</td>
                            <td>{{$item->phoneNumber}}</td>
                            <td>{{$item->email}}</td>
                            <td><span class="badge badge-{{($item->role == 0) ? "success" : "danger"}}">{{($item->role == 0) ? "user" : "admin"}}</span></td>
                            <td>{{($item->status == 0) ? "☠" : "✔"}}</td>
                            <td>
                                <a href="{{route('admin.user.block', ['id'=>$item->id])}}" class="btn btn-{{($item->status == 0) ? "danger" : "warning"}}">{{($item->status == 0) ? "Open" : "Block"}}</a>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

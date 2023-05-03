@extends('admin.layout.main')

@section('title')
    Admin - blog
@endsection

@section('css')
    <style>
        .product{
            width: 40px;
            height: 40px;
            object-fit: cover;
        }
    </style>
@endsection

@section('content')
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Blogs <a href="{{route('admin.blog.create')}}" class="fa fa-plus" style="font-size:15px;color:red"></a></h5>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Image</th>
                        <th scope="col">Title</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($blogs as $item)
                        <tr>
                            <th scope="row">{{$item->id}}</th>
                            <td class="align-middle text-center">
                                <img src="{{url($item->urlImage)}}" alt="..." class="rounded mx-auto d-block product">
                            </td>
                            <td>{{$item->title}}</td>
                            <td>
                                <a href="{{route('admin.blog.delete', ['id'=>$item->id])}}" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

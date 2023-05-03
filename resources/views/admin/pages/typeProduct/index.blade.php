@extends('admin.layout.main')

@section('title')
    Admin - Type Product
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
            <h5 class="card-title">Type Products <a href="{{route('admin.typeProduct.create')}}" class="fa fa-plus" style="font-size:15px;color:red"></a></h5>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($typeProducts as $item)
                        <tr>
                            <th scope="row">{{$item->id}}</th>
                            <td>{{$item->name}}</td>
                            <td>
                                <a href="{{route('admin.typeProduct.update', ['id'=>$item->id])}}" class="btn btn-success">Update</a>
                                <a href="{{route('admin.typeProduct.delete', ['id'=>$item->id])}}" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

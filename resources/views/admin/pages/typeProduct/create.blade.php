@extends('admin.layout.main')

@section('title')
    Admin - Create Type Product
@endsection

@section('content')
    <a href="{{route('admin.product.index')}}" class="btn btn-sm btn-primary">List Product</a>
    <form action="" method="post" class="py-5" enctype="multipart/form-data">
        <h3>Add Type Product</h3>
        @csrf
        <div class="form-group my-2">
            <label for="name">Type Product Name</label>
            <input type="text" class="form-control" id="name" name="name">
            @error('name')
            <span class="text-bold text-italic text-danger">{{$message}}</span>
            @enderror
        </div>

        <div class="justify-content-center d-flex my-5">
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
    </form>
@endsection

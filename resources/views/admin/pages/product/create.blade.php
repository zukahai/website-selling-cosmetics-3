@extends('admin.layout.main')

@section('title')
    Admin - Create product
@endsection

@section('script')
    <script>
        $(document).ready(function() {
            $('.js-example-basic-multiple').select2();
        });
    </script>
@endsection

@section('content')
    <a href="{{route('admin.product.index')}}" class="btn btn-sm btn-primary">List Product</a>
    <form action="" method="post" class="py-5" enctype="multipart/form-data">
        <h3>Add Product</h3>
        @csrf
        <div class="form-group my-2">
            <label for="name">ProductName</label>
            <input type="text" class="form-control" id="name" name="name">
            @error('name')
            <span class="text-bold text-italic text-danger">{{$message}}</span>
            @enderror
        </div>
        <div class="form-group">
            <label for="typeProduct">TypeProduct</label>
            <select class="form-control js-example-basic-multiple" data-control="select2" id="typeProduct" name="typeProduct_id" >
                @foreach($typeProducts as $item)
                    <option value="{{$item->id}}">{{$item->name}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group my-2">
            <label for="price">Price</label>
            <input type="number" class="form-control" id="price" name="price">
            @error('price')
            <span class="text-bold text-italic text-danger">{{$message}}</span>
            @enderror
        </div>
        <div class="form-group my-2">
            <label for="description">Description</label>
            <input type="text" class="form-control" id="description" name="description">
            @error('description')
            <span class="text-bold text-italic text-danger">{{$message}}</span>
            @enderror
        </div>
        <div class="form-group my-2">
            <label for="image">Image</label>
            <input type="file" class="form-control" id="image" name="image">
            @error('image')
            <span class="text-bold text-italic text-danger">{{$message}}</span>
            @enderror
        </div>

        <div class="justify-content-center d-flex my-5">
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
    </form>
@endsection

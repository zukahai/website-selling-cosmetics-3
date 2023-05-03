@extends('admin.layout.main')

@section('title')
    Admin - Create blog
@endsection

@section('script')
    <script>
        $(document).ready(function() {
            $('.js-example-basic-multiple').select2();
        });
        
    </script>
    <script src="https://cdn.tiny.cloud/1/uvz9twni3jdi0u4gxcil3o99099o63a23k0j1gxujxm0cn1a/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
          selector: 'textarea',
          plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
          toolbar: 'forecolor backcolor|undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
        });
      </script>
@endsection

@section('content')
    <form action="" method="post" class="py-5" enctype="multipart/form-data">
        <h3>Create blog</h3>
        @csrf
        <div class="form-group my-2">
            <label for="title">ProduTitlectName</label>
            <input type="text" class="form-control" id="title" name="title">
            @error('title')
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
        <div class="form-group my-2">
            <label for="content">Content</label>
            <textarea rows="9" class="form-control" id="content" name="content"></textarea>
            @error('content')
            <span class="text-bold text-italic text-danger">{{$message}}</span>
            @enderror
        </div>

        <div class="justify-content-center d-flex my-5">
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
    </form>
@endsection

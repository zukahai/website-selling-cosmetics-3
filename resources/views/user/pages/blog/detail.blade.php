@extends("user.layout.main")

@section("title")
    {{$blog->title}}
@endsection

@section("tag")
    @php
        $tag = "blog";
    @endphp
@endsection

@section('css')
    <style>
        .productHome{
            width: 300px;
            height: 350px;
            object-fit: cover;
        }

         .product{
             width: 60px;
             height: 60px;
             object-fit: cover;
         }
		 .blog-img{
			width: 260px;
            height: 160px;
            object-fit: cover;
			margin: 10px;
		 }
        a{
            text-decoration: none;
        }
        .media{
            justify-content: center;
            margin: auto;
            width: 70%;
            margin-top: 15px;
            text-align: center;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        img{
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
        }
    </style>
@endsection

@section("content")
    <div class="container">
        <a href="{{route('user.blog')}}">Các bài blog khác</a>

        {!!$blog->content!!}
    </div>
@endsection

@section('scripts')
    <script>
        $(document).ready(function(){

            $('#galleryModal').on('show.bs.modal', function (e) {
                $('#galleryImage').attr("src",$(e.relatedTarget).data("large-src"));
            });
            $("#myModal").modal('show');
        });
    </script>
@endsection

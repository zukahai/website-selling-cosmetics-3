@extends("user.layout.main")

@section("title")
    Blog
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
    </style>
@endsection

@section("content")
        <section class="blog-list px-3 py-5 p-md-5">

		    <div class="container">
				@foreach ($blogs as $item)
				<div class="item mb-5">
				    <div class="media">
					    <img class="d-none d-md-flex blog-img" src="{{url($item->urlImage)}}" alt="image">
					    <div class="media-body">
						    <h3 class="title mb-1"><a href="{{route('user.blog.detail', ['id'=>$item->id])}}">{{$item->title}}</a></h3>
						    <div class="intro">{{$item->created_at}}</div>
						    <a class="more-link" href="{{route('user.blog.detail', ['id'=>$item->id])}}">Read more &rarr;</a>
					    </div><!--//media-body-->
				    </div><!--//media-->
			    </div><!--//item-->
				@endforeach
			
		    </div>
	    </section>
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

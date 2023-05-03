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
						    <h3 class="title mb-1"><a href="blog-post.html">{{$item->title}}</a></h3>
						    <div class="meta mb-1"><span class="date">Published 3 months ago</span><span class="time">5 min read</span><span class="comment">
						    <div class="intro">{{substr($item->content, 0, 500)}}...</div>
						    <a class="more-link" href="blog-post.html">Read more &rarr;</a>
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

@extends("user.layout.main")

@section("title")
    Home
@endsection

@section('onload')
    @if ($message = Session::get('success'))
        onload="loadPage('{{$message}}' , 'success')"
    @endif
    @if ($message = Session::get('danger'))
        onload="loadPage('{{$message}}' , 'danger')"
    @endif
    @if ($message = Session::get('warning'))
        onload="loadPage('{{$message}}' , 'warning')"
    @endif
@endsection

@section("tag")
    @php
        $tag = "home";
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
    </style>
@endsection

@section("content")
    <!-- Slider -->
    <section class="section-slide">
        <div class="wrap-slick1 rs1-slick1">
            <div class="slick1">
                <div class="item-slick1" style="background-image: url(asset/user/images/slide-04.png);">
                    <div class="container h-full">
                        <div class="flex-col-l-m h-full p-t-100 p-b-30">
                            <div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
								<span class="ltext-202 cl2 respon2">
									New Product 2023
								</span>
                            </div>

                            <div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="400">
                                <h2 class="ltext-104 cl2 p-t-19 p-b-43 respon1">
                                    New arrivals
                                </h2>
                            </div>

                            <div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="800">
                                <a href="{{route('user.product.index')}}" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                    Shop Now
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <br> <br> <br>

    <!-- Banner -->
    <div class="sec-banner bg0">
        <div class="flex-w flex-c-m">
            <div class="size-202 m-lr-auto respon4">
                <!-- Block1 -->
                <div class="block1 wrap-pic-w">
                    <img src="{{asset('asset/user/images/skin.png')}}" alt="IMG-BANNER">

                    <a href="{{route('user.product.index')}}" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                        <div class="block1-txt-child1 flex-col-l">
							<span class="block1-name ltext-102 trans-04 p-b-8">
								SKINCARE
							</span>

                            <span class="block1-info stext-102 trans-04">
								Spring 2023
							</span>
                        </div>

                        <div class="block1-txt-child2 p-b-4 trans-05">
                            <div class="block1-link stext-101 cl0 trans-09">
                                Shop Now
                            </div>
                        </div>
                    </a>
                </div>
            </div>

            <div class="size-202 m-lr-auto respon4">
                <!-- Block1 -->
                <div class="block1 wrap-pic-w">
                    <img src="{{asset('asset/user/images/makeup.png')}}" alt="IMG-BANNER">

                    <a href="{{route('user.product.index')}}" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                        <div class="block1-txt-child1 flex-col-l">
							<span class="block1-name ltext-102 trans-04 p-b-8">
								MAKE UP
							</span>

                            <span class="block1-info stext-102 trans-04">
								Spring 2023
							</span>
                        </div>

                        <div class="block1-txt-child2 p-b-4 trans-05">
                            <div class="block1-link stext-101 cl0 trans-09">
                                Shop Now
                            </div>
                        </div>
                    </a>
                </div>
            </div>

            <div class="size-202 m-lr-auto respon4">
                <!-- Block1 -->
                <div class="block1 wrap-pic-w">
                    <img src="{{asset('asset/user/images/hair.png')}}" alt="IMG-BANNER">

                    <a href="{{route('user.product.index')}}" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                        <div class="block1-txt-child1 flex-col-l">
							<span class="block1-name ltext-102 trans-04 p-b-8">
								HAIR CARE
							</span>

                            <span class="block1-info stext-102 trans-04">
								New Trend
							</span>
                        </div>

                        <div class="block1-txt-child2 p-b-4 trans-05">
                            <div class="block1-link stext-101 cl0 trans-09">
                                Shop Now
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>


    <!-- Product -->
    <section class="sec-product bg0 p-t-100 p-b-50">
@endsection

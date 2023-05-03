@extends("user.layout.main")

@section("title")
    Contact
@endsection

@section('onload')
    @if($errors->any())
        onload="loadPage('Vui lòng kiểm tra thông tin' , 'warning')"
    @endif
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
        $tag = "contact";
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
    <!-- Content page -->
    <section class="bg0 p-t-104 p-b-116">
        <div class="container">
            <div class="flex-w flex-tr">
                <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                    <form action="{{route('user.contact.create')}}" method="POST">
                        @csrf
                        <h4 class="mtext-105 cl2 txt-center p-b-30">
                            Send Us A Message
                        </h4>

                        <div class="bor8 m-b-20 how-pos4-parent">
                            <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="email" name="email" placeholder="Your Email Address">
                            <img class="how-pos4 pointer-none" src="{{asset('asset/user/images/icons/icon-email.png')}}" alt="ICON">
                            @error('email')
                            <span class="text-bold text-italic text-danger">{{$message}}</span>
                            @enderror
                        </div>

                        <div class="bor8 m-b-30">
                            <textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg" placeholder="How Can We Help?"></textarea>
                            @error('msg')
                            <span class="text-bold text-italic text-danger">{{$message}}</span>
                            @enderror
                        </div>

                        <button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                            Submit
                        </button>
                    </form>
                </div>

                <div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
                    <div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

                        <div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Address
							</span>

                            <p class="stext-115 cl6 size-213 p-t-18">
                                470 Tran Dai Nghia, Da Nang, Viet Nam
                            </p>
                        </div>
                    </div>

                    <div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-phone-handset"></span>
						</span>

                        <div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Lets Talk
							</span>

                            <p class="stext-115 cl1 size-213 p-t-18">
                                +83 9650 117
                            </p>
                        </div>
                    </div>

                    <div class="flex-w w-full">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-envelope"></span>
						</span>

                        <div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Sale Support
							</span>

                            <p class="stext-115 cl1 size-213 p-t-18">
                                hungnv.21it@vku.udn.vn
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Map -->
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.7332974702135!2d108.25016631403105!3d15.975298246193653!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142108997dc971f%3A0x1295cb3d313469c9!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiB2w6AgVHJ1eeG7gW4gdGjDtG5nIFZp4buHdCAtIEjDoG4!5e0!3m2!1svi!2s!4v1667490548493!5m2!1svi!2s" width="1600" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
@endsection

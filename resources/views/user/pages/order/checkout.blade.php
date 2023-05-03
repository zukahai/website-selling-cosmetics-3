@extends("user.layout.main")

@section("title")
    Check Out
@endsection

@section("tag")
    @php
        $tag = "";
    @endphp
@endsection

@section('css')
    <style>
        .product{
            width: 60px;
            height: 60px;
            object-fit: cover;
        }
        .center {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
        }
    </style>
@endsection

@section('script')
    <script type="">
        window.setTimeout( function() {
          window.location.reload();
        }, 5000);
    </script>
@endsection

@section("content")
    <!-- breadcrumb -->
    <form class="bg0 p-t-75 p-b-85">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                    <div class="m-l-25 m-r--38 m-lr-0-xl">
                        <div class="justify-content-center d-flex">
                            <div class="table-shopping-cart 50vw">
                                <img src="{{url($urlQA)}}" class="center">
                            </div>

                        </div>
                        <div class="">
                            <h1 class="text-center my-1"><span class="badge badge-{{$order->status->color}}" >{{$order->status->name}}</span></h1>
                            <h6 class="text-center my-1">Bank: {{$bank->name}} ({{$bank->shortName}})</h6>
                            <h5 class="text-center my-1">Number: {{$bank->number}}</h5>
                            <h3 class="text-center text-danger my-1">Amount: {{number_format($order->total_price, 0, '', ',')}} VND</h3>
                            <h4 class="text-center my-1">Description: ORDER{{$order->id}}</h4>
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </form>
@endsection

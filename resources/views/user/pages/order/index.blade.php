@extends("user.layout.main")

@section("title")
    Order
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
    </style>
@endsection

@section("content")
    <!-- breadcrumb -->
    <form class="bg0 p-t-75 p-b-85">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                    <div class="m-l-25 m-r--38 m-lr-0-xl">
                        <div class="wrap-table-shopping-cart">
                            <table class="table-shopping-cart">
                                <tr class="table_head">
                                    <th class="column-1">Id</th>
                                    <th class="column-1">Product</th>
                                    <th class="column-2">Money</th>
                                    <th class="column-3">Status</th>
                                    <th class="column-4">&nbsp;</th>
                                </tr>

                                @foreach($orders as $item)
                                    <tr class="table_row">
                                        <td class="column-1">{{$item->id}}</td>
                                        <td class="column-2">
                                            @foreach($item->detailOrders as $detail)
                                                <h6 class="text-sm">- {{$detail->product->name}}</h6>
                                            @endforeach
                                        </td>
                                        <td class="column-4">{{number_format($item->total_price, 0, '', ',')}} đ</td>
                                        <td class="column-5"><span class="badge badge-{{$item->status->color}}">{{$item->status->name}}</span></td>
                                        <td class="column-6">
                                            <a href="{{route('user.order.checkout', ['id'=>$item->id])}}"><i class="zmdi zmdi-assignment-o"></i></a>
                                        </td>
                                    </tr>
                                @endforeach

                            </table>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </form>
@endsection

@extends('admin.layout.main')

@section('title')
    Admin - User
@endsection

@section('css')
    <style>
        .avata{
            width: 60px;
            height: 60px;
            object-fit: cover;
        }
    </style>
@endsection

@section('content')
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Users</h5>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Phone Number</th>
                        <th scope="col">Products</th>
                        <th scope="col">Money</th>
                        <th scope="col">Status</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($orders as $item)
                        <tr>
                            <td class="column-1">{{$item->id}}</td>
                            <td class="column-1">{{$item->user->phoneNumber}}</td>
                            <td class="column-2">
                                @foreach($item->detailOrders as $detail)
                                    <h6 class="text-sm">- {{$detail->product->name}}</h6>
                                @endforeach
                            </td>
                            <td class="column-4">{{number_format($item->total_price, 0, '', ',')}} VND</td>
                            <td class="column-5"><span class="badge badge-{{$item->status->color}}">{{$item->status->name}}</span></td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

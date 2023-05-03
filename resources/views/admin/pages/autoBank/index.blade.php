@extends('admin.layout.main')

@section('title')
    Admin - Auto bank
@endsection

@section('css')
    <style>
        .product{
            width: 40px;
            height: 40px;
            object-fit: cover;
        }
    </style>
@endsection

{{--@section('script')--}}
{{--    <script type="">--}}
{{--        window.setTimeout( function() {--}}
{{--          window.location.reload();--}}
{{--        }, 5000);--}}
{{--    </script>--}}
{{--@endsection--}}

@section('content')
    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Amount</th>
                        <th scope="col">Description</th>
                        <th scope="col">Type</th>
                        <th scope="col">Order_id</th>
                        <th scope="col">activeDatetime</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($transactions as $item)
                        <tr class="table_row">
                            <td class="column-1">{{number_format($item['amount'], 0, '', '.')}} VND</td>
                            <td class="column-2">{{$item['description']}}</td>
                            <td class="column-2">{{$item['type']}}</td>
                            <td class="column-3">{{$item['order_id']}}</td>
                            <td class="column-4">{{$item['activeDatetime']}}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

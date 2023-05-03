@extends('admin.layout.main')

@section('title')
    Admin - Contact
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
            <h5 class="card-title">Contacts</h5>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Email</th>
                        <th scope="col">Message</th>
                        <th scope="col">Create time</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($contacts as $item)
                        <tr>
                            <td class="column-1">{{$item->id}}</td>
                            <td class="column-1">{{$item->email}}</td>
                            <td class="column-1">{{$item->message}}</td>
                            <td class="column-1">{{$item->created_at}}</td>

                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

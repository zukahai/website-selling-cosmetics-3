@extends("user.layout.login")

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

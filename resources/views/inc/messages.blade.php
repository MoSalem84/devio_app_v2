
@if(session('success')!=null)
                <div class="alert alert-success text-center">
                    {{session('success')}}</div>
                @endif


@if($errors->any())
@foreach ($errors->all() as $error)
<div class="alert alert-danger" p-1 my-1>{{$error}}</div>
@endforeach
@endif

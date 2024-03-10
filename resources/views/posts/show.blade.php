@extends('layout.app')

@section('content')
<div class="cal-12">
    <h1 class="p-3 border text-center my-3">{{$post->title}}</h1>
</div>


<div class="cal-12">

    <div class="card">
        <div class="card-header">

{{$post->user->name}} - {{$post->created_at->format('Y-m-d')}}
        </div>
        <div class="card-body">

            <div class="card-img">

                <img src="{{$post->image()}}" width="60%" height="400" alt="">
            </div>
          <h5 class="card-title">{{$post->title}}</h5>
          <p class="card-text">{{$post->description}}</p>
        </div>
      </div>
</div>

@endsection

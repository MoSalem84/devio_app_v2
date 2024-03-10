@extends('layout.app')

@section('content')
<div class="cal-12">
    <h1 class="p-3 border text-center my-3">All Posts</h1>
</div>

@foreach ( $posts as $post)


<div class="cal-12 my-3">

    <div class="card">
        <div class="card-header">

            {{$post->user->name}} - {{$post->created_at->format('Y-m-d')}}
        </div>
        <div class="card-body">
          <h5 class="card-title">{{$post->title}}</h5>
          <p class="card-text">{{\Str::limit($post->description,90)}}</p>
          <a href="{{url('posts/'.$post->id)}}" class="btn btn-primary">Show Full Post</a>
        </div>
      </div>
</div>
@endforeach

@endsection

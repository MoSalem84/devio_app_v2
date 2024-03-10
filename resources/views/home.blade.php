@extends('layout.app')

@section('content')
<div class="cal-12">
    <h1 class="p-3 border text-center my-3">All Posts</h1>
</div>

@foreach ( $posts as $post)
<div class="cal-8 mx-auto ">
    <div class="card text-center">
        <div class="card-header">

            {{$post->user->name}} - {{$post->created_at->format('Y-m-d')}}
            <td>
                @foreach ($post->tags as $tag)
                <span class="badge bg-warning">{{ $tag->name }}</span>
                @endforeach
                </td>
        </div>

        <div class="card-body bg-light mb-1">
          <h5 class="card-title">{{$post->title}}</h5>

          <div class="card-img">

            <img src="{{$post->image()}}" width="50%" height="400" alt="">
        </div>

          <p class="card-text">{{\Str::limit($post->description,200)}}</p>
          <a href="{{url('posts/'.$post->id)}}" class="btn btn-primary">Show Full Post</a>
        </div>
      </div>
</div>
@endforeach
<div>

    {{ $posts->links() }}</div>

@endsection

@extends('layout.app')

@section('content')

<div class="cal-12">
    <h1 class="p-3  text-center my-3">Edit Post Info</h1>
</div>
<div class="cal-8 mx-auto">

<form action="{{url('posts/'.$post->id)}}" method="POST"class="form border p-3"
    enctype="multipart/form-data">
    @method('PUT')
    @csrf
    @if(session()->get('success'))
    <h3 class="text-success my-2">{{session()->get('success')}}</h3>
    @endif

    @if($errors->any())
    <div class="alert alert-danger p-1">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{$error}}</li>
            @endforeach
        </ul>
    </div>
    @endif
<div class="mb-3">
    <label for="">Post Title</label>
    <input type="text" name="title" class="form-control" value="{{$post->title}}">
</div>


<div class="mb-3">
    <label for="">Post Description</label>
<textarea name="description" class="form-control" rows="7" >
    {{$post->description}}
</textarea>
</div>


<div class="mb-3">
    <label for="">Tags</label>
    <select name="tags[]" class="form-control" multiple>
    @foreach ($tags as $tag)
    <option @if ($post->tags->contains($tag)) selected  @endif
    value="{{ $tag->id }}">{{ $tag->name }}</option>
    @endforeach
    </select>
    </div>

    <div class="mb-3">
        <label for="">Post Image</label>
        <input type="file" name="image" class="form-control">

    </div>


    <div class="mb-3">
        <label for="#">Writer</label>
        <select name="user_id" class="form-control">

    @foreach ($users as $user)
    <option @selected($user->id==$post->user_id) value="{{ $user->id }}">{{ $user->name }}</option>
    @endforeach
        </select>
    </div>

<div class="mb-3">
<input type="submit" class="form-control bg-success" value="Save"></textarea>
</div>

</form>
</div>

@endsection

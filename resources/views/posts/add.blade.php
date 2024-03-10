@extends('layout.app')

@section('content')

<div class="cal-12">
    <h1 class="p-3  text-center my-3">Add New Post</h1>
</div>
<div class="cal-8 mx-auto">

<form action="{{url('posts')}}" method="POST"class="form border p-3" enctype="multipart/form-data">
    @csrf
    @include('inc.messages')

<div class="mb-3">
    <label for="">Post Title</label>
    <input type="text" name="title" class="form-control" value="{{old('title')}}">
</div>


<div class="mb-3">
    <label for="">Post Description</label>
<textarea name="description" class="form-control" rows="7" >{{old('description')}}
</textarea>
</div>


<div class="mb-3">
<label for="">Tags</label>
<select name="tags[]" id="" class="form-control" multiple>
@foreach ($tags as $tag)
<option value="{{ $tag->id }}">{{ $tag->name }}</option>
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
<option value="{{ $user->id }}">{{ $user->name }}</option>
@endforeach
    </select>
</div>

<div class="mb-3">
<input type="submit" class="form-control bg-success" value="Save"></textarea>
</div>

</form>
</div>

@endsection

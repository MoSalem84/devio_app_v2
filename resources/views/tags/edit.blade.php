@extends('layout.app')

@section('content')

<div class="cal-12">
<h1 class="my-3 text-center">Edit Tag Info</h1>
</div>

<div class="col-6 mx-auto">
    <form action="{{route('tags.update' , $tag->id)}}" class="form border p-3" method="POST">
        @csrf
        @method('PUT')

      @include('inc.messages')
    <div class="mb-3">
        <label for="">Tag Name</label>
        <input type="text" name="name" value="{{ $tag->name }}" class="form-control">
    </div>
    <div class="mb-3">
        <input type="submit" value="Save" class="form-control bg-success text-white">
    </div>


    </form>
</div>

@endsection

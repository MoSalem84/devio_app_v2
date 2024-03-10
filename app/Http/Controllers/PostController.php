<?php

namespace App\Http\Controllers;

use File ;
use App\Models\Tag;
use App\Models\User;
use App\Models\Post ;
use Illuminate\Http\Request;

class PostController extends Controller
{
   public function index(){

    $posts  = Post::orderBy('id' , 'DESC')->paginate() ;

    return view('posts.index' , ['posts'=> $posts]) ;
   }

   public function create() {

    $users = User::select('id' , 'name')->get() ;
    $tags = Tag::select('id' , 'name')->get() ;
    return view('posts.add' , compact('users' , 'tags')) ;

   }


   public function store(Request $request) {

    $data = $request->validate([
    'title'=>['required' , 'string' , 'min:3' , 'max:30'] ,
    'description'=>['required' , 'string' , 'max:1000'] ,
    'user_id'=>['required' , 'exists:users,id'] ,
    'image'=>['required' , 'image' , 'mimes:png,jpg,jpeg,gif']

    ]);


    $image =  $request->file('image')->store('public') ;
    $post =new Post ();
    $post->title = $request->title ;
    $post->description = $request->description ;
    $post->user_id = $request->user_id ;
    $post->image = $image;
    $post->save();

$post->tags()->sync($request->tags) ;
    return redirect('posts')->with('success' , 'Post added successfully') ;

    }


 public function home(){

    $posts  = Post::orderBy('id' , 'DESC')->paginate() ;


    return view('home' , ['posts'=> $posts]) ;
   }

public function show($id){
    $post = Post::findOrFail($id);

    return view('posts.show' , ['post'=>$post]) ;

}

public function search(Request $request){
$q= $request->q ;
$posts=Post::where('description' , 'LIKE' , '%'.$q.'%')->get() ;
return view('posts.search' , ['posts' =>$posts]) ;

}

   public function edit($id) {

        $post = Post::findOrFail($id);
    $users=User::select('id' , 'name')->get() ;
    $tags = Tag::select('id' , 'name')->get() ;
    return view('posts.edit' , ['post'=>$post , 'users'=>$users , 'tags'=>$tags]) ;

   }

         public function update($id ,Request $request ) {

    $request->validate([
        'title'=>['required' , 'string' , 'min:3' , 'max:30'] ,
        'description'=>['required' , 'string' , 'max:1000'] ,
        'user_id'=>['required' , 'exists:users,id']
        ]);

$post = Post::findOrFail($id);


$old_image=$post->image ;
$post->title = $request->title ;
$post->description = $request->description ;
$post->user_id = $request->user_id ;


if($request->hasFile('image')){
    $new_image =  $request->file('image')->store('public') ;
    File::delete($old_image);
    $post->image = $new_image;
}

$post->save() ;

$post->tags()->detach() ;
$post->tags()->sync($request->tags) ;
return redirect('posts')->with('success' , 'Post Updated successfully');
   }



         public function destroy($id) {

    $post = Post::findOrFail($id);
    $post->delete() ;
    return back()->with('delete' , 'Post deleted successfully') ;

    }

}

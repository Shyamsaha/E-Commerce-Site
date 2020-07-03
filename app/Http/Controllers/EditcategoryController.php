<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class EditcategoryController extends Controller
{
   public function editcategories($id){
       $category = Category::find($id);
       return view('admin.edit.edit',compact('category'));
   }
   public function updatecategory(Request $request){
       $category=Category::find($request->category_id);

       $category->category_name = $request->category_name;
       $category->category_description = $request->category_description;
       $category->publication_status = $request->publication_status;
       $category->save();
       return redirect('/manage')->with('message', 'Category Information Update Sucessfully');
   }
}

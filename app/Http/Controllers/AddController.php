<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class AddController extends Controller
{
public function add(){
    return view('admin.category.addcategory');
}

public function saveCategory(Request $request){
    $category=new Category();
    $category->category_name = $request->category_name;
    $category->category_description = $request->category_description;
    $category->publication_status = $request->publication_status;
    $category->save();
    return redirect('/add')->with('message', 'Category Information Save Sucessfully');
}


}

<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class DeletecategoryController extends Controller
{
    public function deletecategory($id){
        $category = Category::find($id);
        $category ->delete();
        return redirect('/manage')->with('message', 'Category Information Delete Sucessfully');
    }
}

<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class ManageController extends Controller
{
    public function manage(){

        $categories = Category::all();

        return view('admin.category.managecategory',compact('categories'));
    }


    public function unpublishmanage($id){
        $category = Category::find($id);
        $category -> publication_status=0;
        $category->save();
        return redirect('/manage')->with('message','Category Info Uublished');

    }

    public function publishmanage($id){
        $category = Category::find($id);
        $category -> publication_status=1;
        $category->save();
        return redirect('/manage')->with('message','Category Info Published');
    }
}

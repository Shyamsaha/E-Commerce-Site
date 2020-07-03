<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class AboutController extends Controller
{
    public function About(){
        $categories=Category::where('publication_status',1)->get();
        return view('font-end.about.about',compact('categories'));
    }
    public function more(){
        $categories=Category::where('publication_status',1)->get();
        return view('font-end.about.know-more',compact('categories'));
    }

}

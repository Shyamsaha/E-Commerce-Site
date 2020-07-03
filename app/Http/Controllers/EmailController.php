<?php

namespace App\Http\Controllers;
use App\Category;
use App\Contact;
use Illuminate\Http\Request;
use Session;


class EmailController extends Controller
{
    public function sendEmail(){
        $categories=Category::where('publication_status',1)->get();
        return view('font-end.email.email',compact('categories'));
    }

    public function Email(Request $request){
            $contacts =new Contact();
            $contacts->name = $request->name ;
            $contacts->email= $request->email;
            $contacts->subject =$request->subject;
            $contacts->message= $request->message;
            $contacts->save();
            return redirect('/send/email')->with('msg','Thanks for contacting with us we will reply soon by email');

    }
}

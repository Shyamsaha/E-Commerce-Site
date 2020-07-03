<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;

class FormController extends Controller
{
    public function customerMessage(){
        $contacts=Contact::all();
        return view('admin.message.message',compact('contacts'));

    }
    public function DeleteMessage($id){
        $contacts=Contact::find($id);
        $contacts->delete();
        return redirect('/customer/message');
    }
}

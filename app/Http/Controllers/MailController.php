<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MailController extends Controller
{
    public function mail(){
        return view('font-end.mail.mail');
    }
}

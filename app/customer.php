<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class customer extends Model
{
    protected $fillable = ['customer_id','first_name', 'last_name ', 'email_address','password','address'];
}

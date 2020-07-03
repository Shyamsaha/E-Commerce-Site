@extends('font-end.master')
@section('titel')
    Customer Login
@endsection


@section('body')
    <!--content-->
    <div class="content">
        <div class="single-w13">

            <div class="row">
                <div class="col-md-6 well">
                    <h3 class="text-center">Registration Form</h3>
                    <hr/>
                    {{Session::get('message')}}
                    <form action="{{route('new-customer-registration')}}" method="POST">
                        @csrf

                        <div class="form-group">
                            <input type="text" class="form-control" name="first_name" placeholder="First name" >
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="last_name" placeholder="Last name">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email_address" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control"  name="password"  placeholder="Enter password">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control"  name="phone_number"  placeholder="Phone Number">
                        </div>
                        <div class="form-group">
                            <textarea  name="address" class="form-control"  placeholder="Address" rows="3"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Register</button>
                    </form>





                </div>
                <div class="row">
                    <div class=" col-md-5 well" style="margin-left: 30px;">
                        <h3 class="text-center">Login Here! </h3>

                        <br/>
                        {{Session::get('message')}}
                        <form action="{{route('new-customers-login')}}" method="POST">
                            @csrf

                            <div class="form-group">
                                <input type="email" class="form-control" name="email_address" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control"  name="pass"  placeholder="Enter password">
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>

                        </form>
                    </div>
                </div>




            </div>
        </div>
    </div>



@endsection

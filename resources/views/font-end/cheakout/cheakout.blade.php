@extends('font-end.master')
@section('titel')
    Cheakout
@endsection


@section('body')
   <div class="banner1">
       <div class="container">
           <h3><span>Cheakout</span></h3>
       </div>
   </div>

    <!--content-->
    <div class="content">
        <div class="single-w13">
            <div class="row">
                <div class=" col-md-12 well">
                    <h4 class="text-danger text-center">You have to login first to complete valuable product.If you are not registered before then Registration please! </h4>
                </div>
            </div>


                <div class="row">
                    <div class="col-md-6 well">
                        <h3 class="text-center">Register if you are not registered before </h3>
                        <hr/>

                        <form action="{{route("customer-sign-up")}}" method="POST">
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
                            <h3 class="text-center">If you  registered before then please log in </h3>
                            <h4 class="text-center text-danger">{{Session::get('message')}}</h4>
                            <br/>
                            <form action="{{route('customer-login')}}" method="POST">
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

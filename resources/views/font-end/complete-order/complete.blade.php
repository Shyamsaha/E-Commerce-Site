@extends('font-end.master')
@section('titel')
    Thank You
@endsection
@section('body')


    @extends('font-end.master')
@section('titel')
    Cheakout
@endsection


@section('body')
    <div class="banner1">
        <div class="container">
            <h3><span>Thank You For Visiting Our Shop</span></h3>
        </div>
    </div>

    <!--content-->
    <div class="content">
        <div class="single-w13">
            <div class="row">
                <div class=" col-md-12 well">
                    <h4 class="text-success text-center">You Will Get a Confirmation Phone Calls From Our Shop In 24 hours </h4>
                </div>
            </div>


            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center">Thank You<a class="text-success"> {{Session::get('customerName')}}</a> </h1>
                    <hr/>

                </div>
            </div>
        </div>
    </div>



@endsection






@endsection


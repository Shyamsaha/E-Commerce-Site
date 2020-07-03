@extends('font-end.master')
@section('titel')
    Shipping
@endsection


@section('body')

    <div class="container">
        <div class="row">
            <div class="col-md-12 well">
                <h3 class="text-center text-success"> Dear,<a class="text-danger"> {{Session::get('customerName')}}</a> you have to give us product shipping info to complete your valuable order.If your Billing and Shipping info are same then just press on Save <a class="text alert-danger">Shipping info Button </a> bellow</h3>
            </div>

        </div>

    </div>

    <!--content-->
    <div class="content">
        <div class="single-w13">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 ">
                    <h3>Shipping goes to.... </h3>
                    <hr/>

                    {{ Form::open(['route'=>'new-shipping', 'method'=>'POST']) }}

                        <div class="form-group">
                            <input type="text"  value="{{ $customer->first_name.' '.$customer->last_name }}" class="form-control" name="full_name"  >
                        </div>
                        <div class="form-group">
                            <input type="email" value="{{ $customer->email_address  }}" class="form-control"  name="email_address"  >
                        </div>
                        <div class="form-group">
                            <input type="text" value="{{ $customer->phone_number}}" class="form-control"  name="phone_number" >
                        </div>
                        <div class="form-group">
                            <textarea  name="address" class="form-control"    placeholder="Address" rows="3">{{ $customer->address }} </textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Save Shipping Info</button>
                    {{ Form::close() }}
                    <br>

                </div>
            </div>
        </div>
    </div>



@endsection

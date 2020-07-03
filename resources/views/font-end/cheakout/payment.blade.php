@extends('font-end.master')
@section('titel')
    Shipping
@endsection


@section('body')

    <div class="container">
        <div class="row">
            <div class="col-md-12 well">
                <h3 class="text-center text-success"> Dear,<a class="text-danger"> {{Session::get('customerName')}}</a> you have to give us product payment method</h3>
            </div>

        </div>

    </div>

    <!--content-->
    <div class="content">
        <div class="single-w13">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 ">
                    <form action="{{route('new-order')}}" method="POST">
                        @csrf
                        <table class="table table-bordered ">
                            <tr>
                                <th class="text-center">Cash On Delivery</th>
                                <td><input type="radio" name="payment_type" value="Cash">Cash On Delivery</td>
                            </tr>

                            <tr>
                                <th class="text-center">Bkash</th>
                                <td><input type="radio" name="payment_type" value="Bksash">Bksash</td>
                            </tr>
                            <tr>
                                <th class="text-center">Rocket</th>
                                <td><input type="radio" name="payment_type" value="Rocket">Rocket</td>
                            </tr>

                            <tr>
                                <th> </th>
                                <td><input type="submit" name="btn" class="btn btn-primary" value="Confirm Order"></td>
                            </tr>


                        </table>
                    </form>



                </div>
            </div>
        </div>
    </div>



@endsection

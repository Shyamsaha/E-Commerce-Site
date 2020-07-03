@extends('font-end.master')
@section('titel')
    My Cart
@endsection


@section('body')
<div class="banner1">
    <div class="container">
        <h3><a href="index.html">Home</a>/<span>Add To Cart</span></h3>
    </div>
</div>
<!-----content---->
    <div class="content">
        <div class="single-w13">
            <div class="container">
                <div class="row">
                    <div class="col-md-11 col-md-offset-1">
                        <hr/>
                        <h3 class="text-center text-success">My Shopping Cart</h3>
                        <hr/>
                        <table class="table table-bordered">
                            <tr class="bg-primary text-center">
                                <th>Sl NO</th>
                                <th>Name</th>
                                <th>Image </th>
                                <th>Quantity </th>
                                <th>Price</th>
                                <th>Action</th>
                            </tr>
                            @php($i = 1)
                            @php($sum = 0)
                            @foreach($cartProducts as $cartProduct)
                            <tr class="text-primary text-center">
                                <td>{{ $i++ }}</td>
                                <td>{{ $cartProduct->name }}</td>
                                <td><img src="{{asset($cartProduct->options->image)}}" height="70" width="70" alt=""/></td>

                                <td>

                                    <form action="{{route('update-quantity')}}" method="POST">
                                        @csrf
                                        <input type="number" name="qty" value="{{$cartProduct->qty}}" min="1"/>
                                        <input type="hidden" name="rowId" value="{{$cartProduct->rowId}}" min="1"/>
                                        <input type="submit" name="btn" value="Update"/>
                                    </form>


                                </td>

                                <td>{{ $total=$cartProduct->price*$cartProduct->qty }}</td>
                                <td>
                                    <a href="{{route('delete-cart-item',['rowId'=> $cartProduct->rowId])}}" class="btn btn-danger btn-xs" titel="Delete">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </a>
                                </td>
                            </tr>
                                <?php
                                    $sum = $sum + $total;
                                ?>
                            @endforeach
                            <hr/>
                            <table class="table table-bordered">
                                <tr>
                                    <th>Item Total(Tk.)</th>
                                    <td>{{$sum}}</td>
                                </tr>

                                <tr>
                                    <th>Vat Total(Tk.)</th>
                                    <td>{{$vat= 0}}</td>
                                </tr>

                                <tr>
                                    <th>Grand Total</th>
                                    <td>{{ $orderTotal = $sum + $vat}}(Tk.)</td>
                                <?php

                                    Session::put('orderTotal',$orderTotal);

                                    ?>

                                </tr>



                            </table>

                        </table>
                        <hr/>
                        <hr/>
                        <hr/>
                    </div>
                </div>
                <div class="col-md-11 col-md-offset-1">
                    @if(Session::get('customerId') && Session::get('shippingId'))
                        <a href="{{route('checkout-payment')}}" class="btn btn-success pull-right">Checkout</a>

                    @elseif(Session::get('customerId'))
                        <a href="{{route('new-shipping')}}" class="btn btn-success pull-right">Checkout</a>
                    @else
                        <a href="{{route('customer')}}" class="btn btn-success pull-right">Checkout</a>

                    @endif

                    <a href="{{route('/')}}" class="btn btn-success ">Continue Shopping</a>
                </div>


            </div>
        </div>
    </div>

<br>

@endsection

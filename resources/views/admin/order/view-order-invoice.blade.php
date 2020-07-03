@extends('layouts.admin')
@section('titels')
    View Invoice
@endsection

@section('bodys')
    <div class="row">
        <div class="container">
                        <div class="inv-title bg-black">

                            <h1 class="no-margin bg-primary">Invoice</h1>
                        </div>
                        <div class="inv-header">
                            <div>
                                <img src="/admin/dist/img/logo.png" class="inv-logo">
                                <h2 class="bg-aqua">Shipping Information</h2>
                                <ul>
                                    <li>Name   : {{$shipping->full_name}}</li>
                                    <li>Mobile : {{$shipping->phone_number}}</li>
                                    <li>Email  : {{$shipping->email_address}}</li>
                                </ul>
                                <h2 class="bg-aqua">Billing Information</h2>
                                <ul>
                                    <li>Name   : {{$customer->first_name.' '.$customer->last_name}}</li>
                                    <li>Mobile : {{$customer->phone_number}}</li>
                                    <li>Email  : {{$customer->email_address}}</li>
                                    <li>Address: {{$customer->address}}</li>
                                </ul>
                            </div>
                            <div>
                                <table>
                                    <tr>
                                        <th class="bg-aqua">Invoice No</th>
                                        <td class="bg-black">{{$order->id}}</td>
                                    </tr>
                                    <tr>
                                        <th class="bg-aqua">Date</th>
                                        <td class="bg-black">{{$order->created_at}}</td>
                                    </tr>
                                    <tr>
                                        <th class="bg-aqua">Amount Due</th>
                                        <td class="bg-black">Tk.{{$order-> order_total }}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="inv-body">
                            <table class="table table-striped  ">
                                <thead>
                                <tr class="bg-black-active ">
                                    <th scope="col" class="text-center">SI No</th>
                                    <th scope="col" class="text-center">Product Id</th>
                                    <th scope="col" class="text-center">Product Name</th>
                                    <th scope="col" class="text-center">Product Price</th>
                                    <th scope="col" class="text-center">Product Quantity</th>
                                    <th scope="col" class="text-center">Total Price</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i= 1)
                                @php($sum=0)
                                @foreach($orderDetails as $orderDetail)
                                    <tr class="text-center">

                                        <td class="bg-aqua">{{$i++}}</td>
                                        <td class="bg-aqua">{{ $orderDetail->product_id}}</td>
                                        <td class="bg-aqua">{{ $orderDetail->product_name}}</td>
                                        <td class="bg-aqua">Tk.{{ $orderDetail->product_price}}</td>
                                        <td class="bg-aqua">{{ $orderDetail->product_quantity}}</td>
                                        <td class="bg-aqua">Tk.{{$total=$orderDetail->product_price* $orderDetail->product_quantity}}</td>

                                    </tr>
                                    @php($sum=$sum+$total)
                                  @endforeach
                                </tbody>

                            </table>
                        </div>
                        <div class="inv-footer">
                            <table>
                                <tr>
                                    <th class="bg-aqua">Total Amount</th>
                                    <td class="bg-black" >Tk.{{$sum}}</td>
                                </tr>
                            </table>
                        </div>
                    </div>


                </div>


@endsection

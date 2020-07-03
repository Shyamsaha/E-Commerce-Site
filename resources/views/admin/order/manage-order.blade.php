@extends('layouts.admin')
@section('titels')
    Manage Order
@endsection

@section('bodys')
    <div class="row">

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-info">{{Session('message')}}</h3>
                    <table class="table table-striped table-dark">
                        <thead>
                        <tr class="bg-info text-center">
                            <th scope="col">SI No</th>
                            <th scope="col">Customer Name</th>
                            <th scope="col">Order Total</th>
                            <th scope="col">Order Date</th>
                            <th scope="col">Order Status</th>
                            <th scope="col">Payment Type</th>
                            <th scope="col">Payment Status</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php($i= 1)
                        @foreach($orders as $order)
                            <tr class="text-center">

                                <td>{{$i++}}</td>
                                <td>{{$order->first_name}}</td>
                                <td>{{$order->order_total}}</td>
                                <td>{{$order->created_at}}</td>
                                <td>{{$order->order_status}}</td>
                                <td>{{$order->payment_type}}</td>
                                <td>{{$order->payment_status}}</td>


                                <td>
                                        <a href="{{route('view-order-details',['id'=>$order->id])}}" class="btn btn-info btn-xs" title="View Order Details">
                                            <span class="glyphicon glyphicon-zoom-in"></span>
                                        </a>

                                        <a href="{{route('view-order-invoice',['id'=>$order->id])}}" class="btn btn-warning btn-xs" title="View Order Invoice">
                                            <span class="glyphicon glyphicon-zoom-out"></span>
                                        </a>

                                    <a href="{{route('download-order-invoice',['id'=>$order->id])}}" class="btn btn-success btn-xs" title="Download Order Invoice">
                                        <span class="glyphicon glyphicon-download"></span>
                                    </a>
                                    <a href="{{route('delete-order',['id' =>$order->id])}}" class="btn btn-danger btn-xs" title="Delete Order Invoice">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>

                    </table>

                </div>
            </div>
        </div>
    </div>

@endsection

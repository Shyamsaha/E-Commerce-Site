
@extends('layouts.admin')
@section('titels')
    Manage product
@endsection

@section('bodys')
    <div class="row">

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-info">{{Session('message')}}</h3>
                    <div class="table-responsive">
                        <table class="table table-striped table-dark">
                            <thead>
                            <tr>
                                <th scope="col">SI No</th>
                                <th scope="col">Category Name</th>
                                <th scope="col">Brand Name</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Product Image</th>
                                <th scope="col">product price</th>
                                <th scope="col">Product Quantity</th>
                                <th scope="col">Publication Status</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php($i= 1)
                            @foreach($products as $product)
                            <tr>
                                <td>{{ $i++ }}</td>
                                <td>{{$product->category_name}}</td>
                                <td>{{$product->brand_name}}</td>
                                <td>{{$product->product_name}}</td>
                                <td>
                                    <img src="{{ asset($product->product_image) }}" height="100" width="100" >
                                </td>
                                <td>{{$product->product_price}}</td>
                                <td>{{$product->product_quantity}}</td>
                                <td>{{$product->publication_status == 1 ?'published':'unpublished'}}</td>
                                <td>
                                    @if($product->publication_status == 1)
                                    <a href="{{route('unpublished-product',['id'=>$product->id])}}" class="btn btn-info btn-xs">
                                        <span class="glyphicon glyphicon-arrow-up"></span>
                                    </a>
                                    @else
                                    <a href="{{route('published-product',['id'=>$product->id])}}" class="btn btn-warning btn-xs">
                                        <span class="glyphicon glyphicon-arrow-down"></span>
                                    </a>
                                    @endif
                                    <a href="{{route('edit-product',['id'=>$product->id])}}" class="btn btn-success btn-xs">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </a>
                                    <a href="{{route('delete-product',['id' =>$product->id])}}" class="btn btn-danger btn-xs">
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
    </div>

@endsection

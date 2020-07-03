@extends('font-end.master')
@section('titel')
    Product Details
@endsection


@section('body')
    <!--content-->
    <div class="content">
        <!--single-->
        <div class="single-wl3">
            <div class="container">
                <div class="single-grids">
                    <div class="col-md-9 single-grid">
                        <div clas="single-top">
                            <div class="single-left">
                                <div class="flexslider">
                                    <ul class="slides">
                                        <li data-thumb="{{asset( $product->product_image )}}">
                                            <div class="thumb-image"> <img src="{{asset( $product->product_image )}}" data-imagezoom="true" class="img-responsive"> </div>
                                        </li>
                                        <li data-thumb="{{asset( $product->product_image )}}">
                                            <div class="thumb-image"> <img src="{{asset( $product->product_image )}}" data-imagezoom="true" class="img-responsive"> </div>
                                        </li>
                                        <li data-thumb="{{asset( $product->product_image )}}">
                                            <div class="thumb-image"> <img src="{{asset( $product->product_image )}}" data-imagezoom="true" class="img-responsive"> </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="single-right simpleCart_shelfItem">
                                <h4>{{ $product->product_name }}</h4>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                <p class="price item_price">Tk.{{ $product->product_price }}</p>
                                <div class="description">
                                    <p><span>Quick Overview :</span>{{ $product->short_description }}</p>
                                </div>

                                <form action="{{route('add-to-cart')}}" method="POST">
                                    @csrf
                                    <div class="color-quality">
                                    <h6>Quantity :</h6>
                                    <div class="quantity">
                                        <div class="quantity-select">
                                            <input type="number" name="qty" value="1" min="1"/>
                                            <input type="hidden" name="id" value="{{ $product->id }}"/>
                                        </div>
                                    </div>

                                </div>
                                <div class="women">
                                    <input type="submit" name="btn" value="Add To Cart" class="my-cart-b item_add" />
                                </div>

                                </form>


                                <div class="social-icon">
                                    <a href="https://www.facebook.com/ShyamClickZ007/?modal=admin_todo_tour"><i class="icon"></i></a>
                                    <a href="https://twitter.com/ShyamSa61035983"><i class="icon1"></i></a>
                                    <a href="https://www.linkedin.com/in/shyam-saha-876aba144/"><i class="icon3"></i></a>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="col-md-3 single-grid1">
                        <h3>Recent Products</h3>
                        <div class="recent-grids">
                            @foreach($recentProducts as $recentProduct)
                            <div class="recent-left">
                                <a href="{{ route('product-details',['id'=>$recentProduct->id]) }}"><img src="{{asset($recentProduct->product_image)}}"  height="90" width="70" alt=""></a>
                            </div>
                            <div class="recent-right">
                                <h6 class="best2"><a href="{{ route('product-details',['id'=>$recentProduct->id]) }}">{{$recentProduct->product_name}}</a></h6>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                <span class=" price-in1">Tk.{{$recentProduct->product_price}}</span>
                            </div>

                            <div class="clearfix"> </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!--Product Description-->
                <div class="product-w3agile">
                    <h3 class="tittle1">Product Description</h3>
                    <div class="product-grids">
                        <div class="col-md-4 product-grid">
                            <div id="owl-demo" class="owl-carousel">
                                <div class="item">
                                    @foreach($recentProducts as $recentProduct)
                                    <div class="recent-grids">
                                        <div class="recent-left">
                                            <a href="{{ route('product-details',['id'=>$recentProduct->id]) }}"><img src="{{asset($recentProduct->product_image)}}" height="90" width="70" alt=""></a>
                                        </div>
                                        <div class="recent-right">
                                            <h6 class="best2"><a href="{{ route('product-details',['id'=>$recentProduct->id]) }}">{{$recentProduct->product_name}}</a></h6>
                                            <div class="block">
                                                <div class="starbox small ghosting"> </div>
                                            </div>
                                            <span class=" price-in1">Tk.{{$recentProduct->product_price}}</span>
                                        </div>
                                        <div class="clearfix"> </div>

                                    </div>
                                    @endforeach
                                </div>

                            </div>
                        </div>
                        <div class="col-md-8 product-grid1">
                            <div class="tab-wl3">
                                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                                    <div id="myTabContent" class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                                            <div class="descr">
                                                <h4>{{$product->product_name}}</h4>
                                                <p>{{$product->long_description}}</p>
                                            </div>
                                        </div>
                                        <br/>
                                        <br/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>

                <!--Product Description-->
            </div>
        </div>
        <!--single-->

        <!--new-arrivals-->

    <!--content-->

@endsection

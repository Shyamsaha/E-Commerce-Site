@extends('font-end.master')
@section('titel')
    home
@endsection

@section('body')
    <!--banner-->
    <div class="banner-w3">
        <div class="demo-1">
            <div id="example1" class="core-slider core-slider__carousel example_1">
                <div class="core-slider_viewport">
                    <div class="core-slider_list">
                        <div class="core-slider_item">
                            <img src="/front-end/images//b1.jpg" class="img-responsive" alt="">
                        </div>
                        <div class="core-slider_item">
                            <img src="/front-end/images//b2.jpg" class="img-responsive" alt="">
                        </div>
                        <div class="core-slider_item">
                            <img src="/front-end/images//b3.jpg" class="img-responsive" alt="">
                        </div>
                        <div class="core-slider_item">
                            <img src="/front-end/images//b4.jpg" class="img-responsive" alt="">
                        </div>
                    </div>
                </div>
                <div class="core-slider_nav">
                    <div class="core-slider_arrow core-slider_arrow__right"></div>
                    <div class="core-slider_arrow core-slider_arrow__left"></div>
                </div>
                <div class="core-slider_control-nav"></div>
            </div>
        </div>
        <link href="/front-end/css/coreSlider.css" rel="stylesheet" type="text/css">
        <script src="/front-end/js/coreSlider.js"></script>
        <script>
            $('#example1').coreSlider({
                pauseOnHover: false,
                interval: 3000,
                controlNavEnabled: true
            });

        </script>

    </div>
    <!--banner-->
    <!--content-->
    <div class="content">
        <!--banner-bottom-->
        <div class="ban-bottom-w3l">
            <div class="container">
                <h2 class="tittle">Offer On Product</h2>
                <br/>
                @foreach($adds as $add)
                <div class="col-md-6 ban-bottom">
                    <div class="ban-top">
                        <img src="{{$add->advertise_image}}" class="img-responsive" alt=""/>
                        <div class="ban-text">
                            <h4>{{$add->advertise_name}}</h4>
                        </div>
                        <div class="ban-text2 hvr-sweep-to-top">
                            <h4>{{$add->product_off}}% <span>Off/-</span></h4>
                        </div>
                    </div>
                </div>
                    @endforeach
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--banner-bottom-->
        <!--new-arrivals-->
        <div class="new-arrivals-w3agile">
            <div class="container">
                <h2 class="tittle">New Arrivals</h2>
                <div class="arrivals-grids">
                    @foreach($newProducts as $newProduct)
                    <div class="col-md-3 arrival-grid simpleCart_shelfItem ">
                        <div class="grid-arr">
                            <div  class="grid-arrival">
                                <figure>
                                    <a href="{{ route('product-details',['id'=>$newProduct->id]) }}" class="new-gri">
                                        <div class="grid-img">
                                            <img  src="{{asset($newProduct->product_image)}}"  height="200" width="100">
                                        </div>
                                        <div class="grid-img">
                                            <img  src="{{asset($newProduct->product_image)}}"  height="200" width="100">
                                        </div>
                                    </a>
                                </figure>
                            </div>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="women">
                                <h6><a href="{{route('product-details',['id'=>$newProduct->id])}}">{{$newProduct->product_name}}</a></h6>
                                <p ><em class="item_price">Tk.{{$newProduct->product_price}}</em></p>
                                <a href="{{route('product-details',['id'=>$newProduct->id])}}" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--new-arrivals-->
        <!--accessories-->
        <div class="accessories-w3l">
            <div class="container">
                <h3 class="tittle">20% Discount on</h3>
                <span>TRENDING DESIGNS</span>
                <div class="button">
                    <a href="#" class="button1"> Shop Now</a>
                    <a href="#" class="button1"> Quick View</a>
                </div>
            </div>
        </div>
        <!--accessories-->
        <!--Products-->
        <div class="new-arrivals-w3agile">
            <div class="container">
                <h2 class="tittle">Old Products</h2>
                <div class="arrivals-grids">
                    @foreach($oldProducts as $oldProduct)
                        <div class="col-md-3 arrival-grid simpleCart_shelfItem ">
                            <div class="grid-arr">
                                <div  class="grid-arrival">
                                    <figure>
                                        <a href="{{ route('product-details',['id'=>$oldProduct->id]) }}" class="new-gri">
                                            <div class="grid-img">
                                                <img  src="{{asset($oldProduct->product_image)}}"  height="200" width="100">
                                            </div>
                                            <div class="grid-img">
                                                <img  src="{{asset($oldProduct->product_image)}}"  height="200" width="100">
                                            </div>
                                        </a>
                                    </figure>
                                </div>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>
                                <div class="women">
                                    <h6><a href="{{route('product-details',['id'=>$oldProduct->id])}}">{{$oldProduct->product_name}}</a></h6>
                                    <p ><em class="item_price">Tk.{{$oldProduct->product_price}}</em></p>
                                    <a href="{{route('product-details',['id'=>$oldProduct->id])}}" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>





        <!--Products-->
        <div class="latest-w3">
            <div class="container">
                <h3 class="tittle1">New Shop Trends</h3>
                <div class="latest-grids">
                    @foreach($addbottoms as $addbottom)

                    <div class="col-md-4 latest-grid">
                        <div class="latest-top">
                            <img  src="{{$addbottom->advertise_image}}" height="250" width="350"  alt="">
                            <div class="latest-text">
                                <h4>{{$addbottom->advertise_name}}</h4>
                            </div>
                            <div class="latest-text2 hvr-sweep-to-top">
                                <h4>{{$addbottom->product_off}}%</h4>
                            </div>
                        </div>
                    </div>

                    @endforeach
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--new-arrivals-->
    </div>
    <!--content-->
@endsection

@extends('font-end.master')
@section('titel')
   Update News
@endsection

@section('body')

    <div class="content">
        <div class="single-w13">
            <div class="row">
                <div class=" col-md-12 well">
                    <h4 class="text-danger text-center">News Update from New Shop</h4>
                </div>
            </div>
            @foreach($shopNewses as $shopNews)
            <div class="container text-center">
                <div class="row">
                    <div class="col-md-12 well bg-info">
                        <h4><b>News publish Date :</b> <a>{{$shopNews->created_at}}</a></h4>
                        <h4><b>News Headline     : </b> <a>{{$shopNews->news_headline }}</a></h4>
                        <br/>
                        <h4><b>Full News:</b></h4>
                            <a>{{$shopNews->news_description}}</a>
                    </div>
                </div>
            </div>

@endforeach
@endsection

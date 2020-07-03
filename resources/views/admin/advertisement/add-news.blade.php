@extends('layouts.admin')
@section('titels')
    Add News
@endsection

@section('bodys')
    <br/>
    <br/>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-defautt">
                <div class="panel-body">
                    <h2 class="text-center text-success ">Add News For Customers</h2>
                    <h4 class="text-center text-info ">{{Session('news')}}</h4>
                    <form action="{{route('shopNews-update')}}" method="POST ">
                        @csrf
                        <div class="form-group">
                            <label for="inputAddress">News Headline</label>
                            <input type="text" name="news_headline" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">News Description</label>
                            <textarea class="form-control" name="news_description" rows="2"></textarea>
                        </div>


                        <button type="submit" name="btn" class="btn btn-success">Save News</button>
                    </form>

                </div>
            </div>
        </div>
    </div>

@endsection

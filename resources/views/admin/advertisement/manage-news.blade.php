@extends('layouts.admin')
@section('titels')
    Manage News
@endsection
@section('bodys')
    <br/>
    <br/>
    <div class="row">

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-success">Manage News</h3>
                    <h3 class="text-center text-info">{{Session('managenews')}}</h3>
                    <table class="table table-striped table-dark">
                        <thead>
                        <tr>
                            <th scope="col">SI No</th>
                            <th scope="col"> News Headline</th>
                            <th scope="col">News Description</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php($i= 1)
                        @foreach($shopNews as $shopNew)
                            <tr>

                                <td>{{$i++}}</td>
                                <td>{{$shopNew->news_headline}}</td>
                                <td>{{$shopNew->news_description}}</td>
                                <td>
                                    </a>
                                    <a href="{{route('edits',['id' =>$shopNew->id])}}" class="btn btn-success btn-xs">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </a>
                                    <a href="{{route('delete-news',['id' =>$shopNew->id])}}" class="btn btn-danger btn-xs">
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

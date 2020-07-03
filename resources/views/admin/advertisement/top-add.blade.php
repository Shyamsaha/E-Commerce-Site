@extends('layouts.admin')
@section('titels')
    Manage Top Add
@endsection
@section('bodys')
    <br/>
    <br/>
    <div class="row">

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-success">Manage Advertisements</h3>
                    <h5 class="text-center text-info">{{Session('m')}}</h5>
                    <table class="table table-striped table-dark">
                        <thead>
                        <tr>
                            <th scope="col">SI No</th>
                            <th scope="col">advertise_name</th>
                            <th scope="col">product_off</th>
                            <th scope="col">advertise_image</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php($i= 1)
                        @foreach($add1s as $add1)
                            <tr>

                                <td>{{$i++}}</td>
                                <td>{{$add1->advertise_name}}</td>
                                <td>{{$add1->product_off}}</td>
                                <td>
                                    <img src="{{ asset($add1->advertise_image) }}" height="100" width="100" >
                                </td>
                                <td>
                                    </a>

                                    <a href="{{route('delete-add',['id'=>$add1->id])}}" class="btn btn-danger btn-xs">
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

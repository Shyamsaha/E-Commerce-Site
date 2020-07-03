@extends('layouts.admin')
@section('titels')
    Manage Order
@endsection

@section('bodys')
    <div class="row">

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <table class="table table-bordered ">
                        <thead>
                        <tr class="bg-info">
                            <th scope="col">SI No</th>
                            <th scope="col">Customer Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Subject</th>
                            <th scope="col">Message</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php($i= 1)

                    @foreach($contacts as $contact)
                            <tr >

                                <td>{{$i++}}</td>
                                <td >{{$contact->name}}</td>
                                <td >{{$contact->email}}</td>
                                <td >{{$contact->subject}}</td>
                                <td >{{$contact->message}}</td>

                                <td>

                                    <a href="{{route('delete-message',['id'=>$contact->id])}})}}" class="btn btn-danger btn-xs" title="Delete Order Invoice">
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


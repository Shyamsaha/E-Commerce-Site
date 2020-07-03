@extends('font-end.master')
@section('titel')
   Contact
@endsection


@section('body')
    <div class="content">
        <div class="single-w13">
            <div class="row">
                <div class=" col-md-12 well">
                    <h4 class="text-danger text-center">You Can Communicate With Admin By Message</h4>
                </div>
            </div>

    <div class="container text-center center">
    <div class="row">
        <div class="col-md-12 well">
            <h3 class="text-center">{{Session('msg')}}</h3>
            <hr/>

            <form action="{{route('mail')}}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="">Name</label>
                    <input type="text" class="form-control" name="name" placeholder="Name" >
                </div>

                <div class="form-group">
                    <label for="">Email Address</label>
                    <input type="email" class="form-control" name="email" placeholder="Enter email">
                </div>

                <div class="form-group">
                    <label for="">Subject</label>
                    <input type="text" class="form-control" name="subject" placeholder="Subject">
                </div>

                <div class="form-group">
                    <label for="">Message</label>
                    <textarea  name="message" class="form-control"  placeholder="Message" rows="3"></textarea>
                </div>

                <button type="submit" class="btn btn-primary">Sent Your Message </button>
            </form>


        </div>
    </div>
    </div>



@endsection

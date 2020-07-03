@extends('layouts.admin')
@section('titels')
    Add No 1
@endsection

@section('bodys')
    <br/>
    <br/>

    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-defautt">
                <div class="panel-body">

                    <form action="{{route('add1-top1')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="inputAddress">Advertise Name</label>
                            <input type="text" name="advertise_name" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <label for="inputAddress">Product Off</label>
                            <input type="text" name="product_off" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <label for="inputAddress">Advertise Image</label>
                            <input type="file" name="advertise_image" class="form-control" accept="image/*"/>
                        </div>


                        <button type="submit" name="btn" class="btn btn-info">Save Advertise Info</button>
                    </form>

                </div>
            </div>
        </div>
    </div>

@endsection

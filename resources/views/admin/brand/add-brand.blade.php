@extends('layouts.admin')
@section('titels')
    Add Brand
@endsection

@section('bodys')
    <div class="col-md-10 col-md-offset-1">


        <div class="col-lg-12">
            <h2 class="text-center text-success ">{{Session('message')}}</h2>


        {{Form::open(['route' => 'add-brandinfo','method'=>'POST'])}}

                <div class="form-group">

                    <label for="inputAddress">Brand Name</label>
                    <input type="text" name="brand_name" class="form-control"/>
                    @error('brand_name')
                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                    @enderror

                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Brand Description</label>
                    <textarea class="form-control" name="brand_description" rows="3"></textarea>
                    @error('brand_description')
                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                    @enderror

                </div>
            <label class="control-label col-md-4" >Publication Status</label>
            <div class="col-md-10 radio">
                <label><input type="radio" checked name="publication_status" value="1"/>Published</label>
                <label><input type="radio" name="publication_status" value="0"/>Unpublished</label>
                    @error('publication_status')
                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                    @enderror
                </div>
                <button type="submit" name="btn" class="btn btn-info">Save Brand Info</button>

        {{Form::close()}}
        </div>
@endsection

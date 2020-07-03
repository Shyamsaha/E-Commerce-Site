@extends('layouts.admin')
@section('titels')
    Update Brand Info
@endsection

@section('bodys')
    <div class="col-md-10">
        <h2 class="text-center text-success ">{{Session('message')}}</h2>
        <form action="{{route('update-brand')}}" method="POST">
            @csrf
            <div class="form-group">
                <label for="inputAddress">Brand Name</label>
                <input type="text" class="form-control" name="brand_name" value="{{$brand->brand_name}}">
                <input type="hidden" class="form-control" name="brand_id" value="{{$brand->id}}">
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Brand Description</label>

                <textarea class="form-control" name="brand_description" rows="3">{{$brand->brand_description}}</textarea>
            </div>
            <label class="control-label col-md-4" >Publication Status</label>
            <div class="col-md-10 radio">
                <label><input type="radio" checked name="publication_status"{{$brand->publication_status == 1 ?'checked':'' }} value="1"/>Published</label>
                <label><input type="radio" name="publication_status"{{$brand->publication_status == 0 ?'checked':'' }} value="0"/>Unpublished</label>
            </div>


            <button type="submit" name="btn" class="btn btn-success">Update Brand Info</button>

        </form>

    </div>
@endsection
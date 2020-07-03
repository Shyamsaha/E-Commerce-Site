@extends('layouts.admin')
@section('titels')
    Add Category
@endsection

@section('bodys')
<div class="col-md-10">
    <h2 class="text-center text-success ">{{Session('message')}}</h2>
    <form action="{{route('new-category')}}" method="POST">
        @csrf
        <div class="form-group">
            <label for="inputAddress">Category Name</label>
            <input type="text" class="form-control" name="category_name"  placeholder="Product">
        </div>
        <div class="form-group">
            <label for="exampleFormControlTextarea1">Category Description</label>
            <textarea class="form-control" name="category_description" rows="3"></textarea>
        </div>
        <label class="control-label col-md-4" >Publication Status</label>
        <div class="col-md-10 radio">
            <label><input type="radio" checked name="publication_status" value="1"/>Published</label>
            <label><input type="radio" name="publication_status" value="0"/>Unpublished</label>
        </div>


        <button type="submit" name="btn" class="btn btn-success">Save Category Info</button>

    </form>

</div>
@endsection

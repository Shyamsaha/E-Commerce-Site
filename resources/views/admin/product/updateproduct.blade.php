@extends('layouts.admin')
@section('titels')
    Update Product
@endsection

@section('bodys')
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-defautt">
                <div class="panel-body">
                    <h2 class="text-center text-success ">{{Session('message')}}</h2>
                    <form action="{{route('update-product')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="inputAddress">Category Name</label>
                            <select class="form-control" name="category_id">
                                <option>---Select Category Name---</option>
                                @foreach( $categories as  $category)
                                    <option value="{{ $category->id}} ">{{ $category->category_name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="inputAddress">Brand Name</label>
                            <select class="form-control" name="brand_id">
                                <option>---Select Brand Name---</option>
                                @foreach( $brands as  $brand)
                                    <option value="{{ $brand->id}}">{{ $brand->brand_name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="inputAddress">Product Name</label>
                            <input type="text" name="product_name" class="form-control" value="{{$product->product_name}}"/>
                            <input type="hidden" class="form-control" name="product_id" value="{{$product->id}}">
                        </div>

                        <div class="form-group">
                            <label for="inputAddress">Product Price</label>
                            <input type="number" name="product_price" class="form-control" value="{{$product->product_price}}"/>
                        </div>

                        <div class="form-group">
                            <label for="inputAddress">Product Quantity</label>
                            <input type="number" name="product_quantity" class="form-control" value="{{$product->product_quantity}}"/>
                        </div>

                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Short Description</label>
                            <textarea class="form-control" name="short_description" rows="2">{{$product->short_description}}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">long Description</label>
                            <textarea class="form-control" id="editor" name="long_description" rows="2">{{$product->long_description}}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="inputAddress">Product Image</label>
                            <input type="file" name="product_image" class="form-control" accept="image/*" value="{{$product->product_image}}"/>
                        </div>


                       <label class="control-label col-md-4" >Publication Status</label>
                            <div class="col-md-10 radio">
                                <label><input type="radio" checked name="publication_status"{{$category->publication_status == 1 ?'checked':'' }} value="1"/>Published</label>
                                <label><input type="radio" name="publication_status"{{$category->publication_status == 0 ?'checked':'' }} value="0"/>Unpublished</label>
                            </div>

                        <button type="submit" name="btn" class="btn btn-success">Update product Info</button>
                    </form>

                </div>
            </div>
        </div>
    </div>

@endsection

<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Category;
use App\Product;
use Illuminate\Http\Request;
use DB;

class ProductController extends Controller
{
    public function product(){
        $categories=Category::where('publication_status',1)->get();
        $brands=Brand::where('publication_status',1)->get();
        return view('admin.product.addproduct',[
            'categories' => $categories,
            'brands'     => $brands,
        ]);
    }

    public function addproduct(Request $request){

        $product = new Product();
        $product->category_id = $request ->category_id??0 ;
        $product->brand_id = $request ->brand_id??0;
        $product->product_name = $request ->product_name;
        $product->product_price = $request ->product_price;
        $product->product_quantity = $request ->product_quantity;
        $product->short_description = $request ->short_description;
        $product->long_description = $request ->long_description;

        if ($request->hasFile('product_image')) {
            $image      = $request->file('product_image');
            $imageName  = 'product_'.date('ymdhis').'.'.$image->getClientOriginalExtension();
            $path       = 'product-image/';
            $image->move($path, $imageName);
            $imgUrl   = $path . $imageName;
            $product->product_image = $imgUrl;

        }
        $product->publication_status = $request ->publication_status;
        $product->save();

        return redirect('/product')->with('message', 'Product Information Save Successfully');
    }

    public  function manage(){

        $products = DB::table('products')
            ->join('categories', 'products.category_id', '=', 'categories.id')
            ->join('brands', 'products.brand_id', '=', 'brands.id')
            ->select('products.*', 'categories.category_name', 'brands.brand_name')
            ->get();

        return view('admin.product.manage-product',['products'=>$products]);
    }

    public function unpublishproduct($id){
        $product = Product::find($id);
        $product-> publication_status=0;
        $product->save();
        return redirect('/product/manage-product')->with('message','Product Info Unpublished Successfully');

    }

    public function publishproduct($id){
        $product = Product::find($id);
        $product -> publication_status=1;
        $product->save();
        return redirect('/product/manage-product')->with('message','Product Info Published Successfully');
    }

    public function editproduct($id){
        $product = Product::find($id);
        $categories=Category::where('publication_status',1)->get();
        $brands=Brand::where('publication_status',1)->get();
        return view('admin.product.updateproduct',compact('product','categories','brands'));
    }

    public function updateproduct(Request $request){
        $product=product::find($request->product_id);
        $product->category_id = $request ->category_id;
        $product->brand_id = $request ->brand_id;
        $product->product_name = $request ->product_name;
        $product->product_price = $request ->product_price;
        $product->product_quantity = $request ->product_quantity;
        $product->short_description = $request ->short_description;
        $product->long_description = $request ->long_description;

        if ($request->hasFile('product_image')) {
            $image      = $request->file('product_image');
            $imageName  = 'product_'.date('ymdhis').'.'.$image->getClientOriginalExtension();
            $path       = 'product-image/';
            $image->move($path, $imageName);
            $imgUrl   = $path . $imageName;
            $product->product_image = $imgUrl;
        }
        $product->publication_status = $request ->publication_status;
        $product->save();

        return redirect('/product')->with('message', 'Product Information Update Successfully');
    }

    public function deleteproduct($id){

        $product = Product::find($id);
        $product ->delete();
        return redirect('/product')->with('message', 'Product Information Delete Successfully');

    }



}

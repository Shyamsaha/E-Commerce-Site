<?php

namespace App\Http\Controllers;

use App\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
  public function addbrand(){

      return view('admin.brand.add-brand');
  }
  public function managebrand(){
      $brands= Brand::all();
      return view('admin.brand.manage-brand',compact('brands'));
  }


  public function addbrandinfo(Request $request){

      $this->validate($request, [
          'brand_name' =>'required',
         'brand_description' => 'required',
         'publication_status' => 'required',
      ]);
        $brand =new Brand();
        $brand->brand_name =$request -> brand_name;
        $brand->brand_description =$request -> brand_description;
        $brand->publication_status =$request -> publication_status;
        $brand->save();
      return redirect('/brand/addbrand')->with('message', 'brand Information Save Sucessfully');

  }
    public function unpublishbrand($id){
        $brand = Brand::find($id);
        $brand -> publication_status=0;
        $brand->save();
        return redirect('/brand/managebrand')->with('message','Brand Info Uublished Successfull');
    }
    public function publishbrand($id){
        $brand = Brand::find($id);
        $brand -> publication_status=1;
        $brand->save();
        return redirect('/brand/managebrand')->with('message','Brand Info Published Successfully');

    }
    public function editbrand($id){
        $brand = Brand::find($id);
        return view('admin.edit.editbrand',compact('brand'));
    }

    public function updatebrand(Request $request){
        $brand=Brand::find($request->brand_id);

        $brand->brand_name = $request->brand_name;
        $brand->brand_description = $request->brand_description;
        $brand->publication_status = $request->publication_status;
        $brand->save();
        return redirect('/brand/managebrand')->with('message', 'Brand Information Update Sucessfully');
    }
    public function deletebrand($id){
            $brand = Brand::find($id);
            $brand  ->delete();
            return redirect('/brand/managebrand')->with('message', 'Brand Information Delete Sucessfully');
    }

}

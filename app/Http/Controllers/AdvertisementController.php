<?php

namespace App\Http\Controllers;

use App\Add2;
use App\ShopNewsUpdate;
use Illuminate\Http\Request;
use App\Add1;

class AdvertisementController extends Controller
{
    Public function Add1Top(){
        return view('admin.advertisement.add1-top');
    }

    Public function Add1Top1(Request $request){

           $add1 =new Add1();
           $add1->advertise_name = $request->advertise_name;
           $add1->product_off = $request->product_off;

        if ($request->hasFile('advertise_image')) {
            $image      = $request->file('advertise_image');
            $imageName  = 'Add1_'.date('ymdhis').'.'.$image->getClientOriginalExtension();
            $path       = 'advertise-image/';
            $image->move($path, $imageName);
            $imgUrl   = $path . $imageName;
            $add1->advertise_image = $imgUrl;
        }
            $add1->save();

        return redirect('/add/top')->with('message', 'Advertisement Information Save Successfully');
    }

    public function Add2Top(){

        return view('admin.advertisement.add1-bottom');

    }
    public function AddBottom(Request $request){

       $add2 = new Add2();
        $add2->advertise_name = $request->advertise_name;
        $add2->product_off = $request->product_off;

        if ($request->hasFile('advertise_image')) {
            $image      = $request->file('advertise_image');
            $imageName  = 'Add2_'.date('ymdhis').'.'.$image->getClientOriginalExtension();
            $path       = 'advertise-image/';
            $image->move($path, $imageName);
            $imgUrl   = $path . $imageName;
            $add2->advertise_image = $imgUrl;
        }
        $add2->save();

        return redirect('/add/bottom')->with('message', 'Advertisement Information Save Successfully');


    }

    public function addNews(){
        return view('admin.advertisement.add-news');
    }
    public function shopNews(Request $request){
        $news = new ShopNewsUpdate();
        $news->news_headline = $request->news_headline;
        $news->news_description = $request->news_description;
        $news->save();

        return redirect('/add/news')->with('news', 'News Information Save Sucessfully');
    }



    public function manageAddTop(){
        $add1s = Add1::all();
        return view('admin.advertisement.top-add',compact('add1s'));
    }


    public function manageNews(){
        $shopNews= ShopNewsUpdate::all();
        return view('admin.advertisement.manage-news',compact('shopNews'));
    }
   public function deleteNews($id){
       $shopnew = ShopNewsUpdate::find($id);
       $shopnew->delete();
       return redirect('/shop/news/manage');

   }
    public function editsNews($id){
      $shopnews = ShopNewsUpdate::find($id);
      return view('admin.advertisement.edit-news',compact('shopnews'));
    }
    public function insertMessage(Request $request){
        $shopNews=ShopNewsUpdate::find($request->news_id);

        $shopNews->news_headline = $request->news_headline;
        $shopNews->news_description = $request->news_description;
        $shopNews->save();

        return redirect('/shop/news/manage')->with('update', 'News Information Update Sucessfully');
    }

    public function deleteAddTop($id){
        $adds = Add1::find($id);
        $adds ->delete();
        return redirect('/manage/Top/Add')->with('m', 'Add Information Delete Successfully');
    }

}

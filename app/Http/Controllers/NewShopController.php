<?php

namespace App\Http\Controllers;

use App\Add1;
use App\Add2;
use App\Category;
use App\Product;
use App\ShopNewsUpdate;
use Illuminate\Http\Request;
use function Sodium\compare;

class NewShopController extends Controller
{
    public function index(){
        $categories=Category::where('publication_status',1)->get();
        $newProducts=Product::where('publication_status',1)
                                    ->orderBy('id','DESC')
                                    ->take(8)
                                    ->get();
        $oldProducts=Product::where('publication_status',1)
                                    ->orderBy('id','ASC')
                                    ->take(8)
                                    ->get();
        $adds=Add1::orderBy('id','DESC')
                    ->take(2)
                    ->get();

        $addbottoms=Add2::orderBy('id','DESC')
                    ->take(6)
                    ->get();


        return view('font-end.home.home',[
            'categories' => $categories,
            'newProducts' => $newProducts,
            'oldProducts'  => $oldProducts,
            'adds'=>$adds,
            'addbottoms' =>  $addbottoms,
        ]);
    }

    public function categoriesProducts($id){
        $categories=Category::where('publication_status',1)->get();
        $categoryProducts = Product::where ('category_id',$id)
                                    ->where('publication_status',1)
                                    ->get();

        return view('font-end.products.products',[
            'categories' => $categories,
            'categoryProducts' => $categoryProducts,


        ]);
    }

    public function productDetails($id){

        $categories=Category::where('publication_status',1)->get();
        $recentProducts=Product::where('publication_status',1)
                                     ->orderBy('id','DESC')
                                     ->take(4)
                                     ->get();

        $product=Product::find($id);
        return view('font-end.product-details.product-details',[
            'categories' => $categories,
            'product' => $product,
            'recentProducts' => $recentProducts,


        ]);
    }
    public function viewNews(){
        $categories=Category::where('publication_status',1)->get();
        $shopNewses=ShopNewsUpdate::all();
        return view('font-end.products1.edit',compact('categories','shopNewses'));
    }



}

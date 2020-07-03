<?php

namespace App\Http\Controllers;

use App\Product;
use App\Category;
use Illuminate\Http\Request;
use Cart;

class CartController extends Controller
{
   Public function addToCart( Request $request){

     $product = Product::find($request->id);
     Cart::add([
         'id' => $request->id,
         'name' => $product->product_name,
         'price' => $product->product_price,
         'qty' => $request->qty,
         'options' => [
             'image' => $product->product_image
         ]
     ]);
     return redirect('/cart/show');
   }
    public function showCart(){
        $categories=Category::where('publication_status',1)->get();
       $cartProducts =Cart::content();
        return view('font-end.cart.show-cart',[
            'categories' => $categories,
            'cartProducts' =>$cartProducts,
       ]);
    }

    public function deleteCart($id){
        Cart::remove($id);
        return redirect('/cart/show');
    }
    public function updateCart(Request $request){
        Cart::update($request->rowId,$request->qty);
        return redirect('/cart/show');
    }

}

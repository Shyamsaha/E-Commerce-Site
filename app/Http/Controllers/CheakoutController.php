<?php

namespace App\Http\Controllers;
use App\Category;
use App\customer;
use App\Order;
use App\OrderDetail;
use App\Payment;
use App\Shipping;
use Illuminate\Http\Request;
use Mail;
use Session;
use Cart;

class CheakoutController extends Controller
{
    public function index(){
        $categories=Category::where('publication_status',1)->get();
        return view('font-end.cheakout.cheakout',[
            'categories' => $categories,
        ]);
    }

    public function CustomerSignUp(Request $request){
        $this->validate($request,[
           'email_address' => 'email|unique:customers,email_address'
        ]);

       $customer =new Customer();
        $customer->first_name = $request->first_name ;
        $customer->last_name = $request->last_name;
        $customer->email_address = $request->email_address;
        $customer->password = bcrypt($request->password);
        $customer->phone_number = $request->phone_number;
        $customer->address = $request->address ;
        $customer->save();

        $customerId = $customer->id;
        Session::put('customerId',$customerId);
        Session::put('customerName',$customer->first_name.' '.$customer->last_name);

        $data = $customer ->id;
        return redirect('/checkout/shipping');
    }

        public function CustomerLogin(Request $request){
        $customer = Customer::where ('email_address',$request->email_address)->first();

        if (password_verify($request-> pass, $customer->password)){
            Session::put('customerId',$customer->id);
            Session::put('customerName',$customer->first_name.' '.$customer->last_name );
            return redirect('/checkout/shipping');
        }
        else
        {
            return redirect('/customer')->with('message','Enter Valid Password');
        }


        }




    public function shippingForm(){
        $categories=Category::where('publication_status',1)->get();
        $customer=Customer::find(Session::get('customerId'));
         return view('font-end.cheakout.shipping',[
             'categories' => $categories,
             'customer' => $customer,
         ]);

    }

    public function newShipping(Request $request){
        $shipping=new Shipping();
        $shipping->full_name = $request->full_name ;
        $shipping->email_address = $request->email_address ;
        $shipping->phone_number = $request->phone_number ;
        $shipping->address  = $request->address  ;
        $shipping->save();

        Session::put('shippingId',$shipping->id);

        return redirect('/checkout/payment');
    }

    public function checkoutPayment(){
        $categories=Category::where('publication_status',1)->get();
        return view('font-end.cheakout.payment',compact('categories'));

    }

    public  function newOrder(Request $request){
       $paymentType = $request->payment_type;
       if ( $paymentType =='Cash'){
            $order =new Order();
            $order->customer_id = Session::get('customerId');
            $order->shipping_id = Session::get('shippingId');
            $order->order_total = Session::get('orderTotal');
            $order->save();

            $payment =new Payment();
            $payment->order_id = $order->id;
            $payment->payment_type =$paymentType;
            $payment->save();

            $cartProducts = Cart :: content();

            foreach( $cartProducts as  $cartProduct)
            {
                $orderDetail = new OrderDetail();
                $orderDetail->order_id = $order->id;
                $orderDetail->product_id = $cartProduct->id;
                $orderDetail->product_name = $cartProduct->name;
                $orderDetail->product_price = $cartProduct->price;
                $orderDetail->product_quantity= $cartProduct->qty;
                $orderDetail->save();
            }
          Cart::destroy();

            return redirect('/complete/order');

       }
        else if ( $paymentType =='Bkash'){

        }
        else if ( $paymentType =='Rocket'){

        }
    }


    public function completeOrder(){
        $categories=Category::where('publication_status',1)->get();
        return view('font-end.complete-order.complete',compact('categories'));
    }






    public function CustomerLogout(){
        Session::forget('customerId');
        Session::forget('customerName');
        return redirect('/');
    }

    public function NewCustomerLogin(){

        $categories=Category::where('publication_status',1)->get();
        return view('font-end.customer.customer-login',compact('categories'));
    }

    public function NewCustomerRegistration(Request $request){
        $this->validate($request,[
            'email_address' => 'email|unique:customers,email_address'
        ]);

        $customer =new Customer();
        $customer->first_name = $request->first_name ;
        $customer->last_name = $request->last_name;
        $customer->email_address = $request->email_address;
        $customer->password = bcrypt($request->password);
        $customer->phone_number = $request->phone_number;
        $customer->address = $request->address ;
        $customer->save();

        $customerId = $customer->id;
        Session::put('customerId',$customerId);
        Session::put('customerName',$customer->first_name.' '.$customer->last_name);

        $data = $customer ->id;
        return redirect('/customer/new-customer-login')->with('message','Registration Complete Please Login');

    }




    public function NewCustomersLogin(Request $request){

        $customer = Customer::where ('email_address',$request->email_address)->first();

        if (password_verify($request-> pass, $customer->password)){
            Session::put('customerId',$customer->id);
            Session::put('customerName',$customer->first_name.' '.$customer->last_name );
            return redirect('/');
        }
        else
        {

            return redirect('/new-customer-login')->with('message','Enter Valid Password');
        }


    }


}

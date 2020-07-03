<?php

namespace App\Http\Controllers;

use App\customer;
use App\Order;
use App\OrderDetail;
use App\Payment;
use App\Shipping;
use Illuminate\Http\Request;
use DB;
use PDF;
class OrderController extends Controller
{
    public function manageOrder(){
        $orders = DB::table('orders')
            ->join('customers', 'orders.customer_id', '=', 'customers.id')
            ->join('payments', 'orders.id', '=', 'payments.order_id')
            ->select('orders.*', 'customers.first_name', 'customers.last_name','payments.payment_type','payments.payment_status')
            ->get();

        return view('admin.order.manage-order',compact('orders'));

    }

    public function viewOrderDetails($id){

        $order = Order::find($id);
        $customer= customer::find($order->customer_id);
        $shipping= Shipping::find($order->shipping_id);
        $payment =Payment::where('order_id',$order->id)->first();
        $orderDetails=OrderDetail::where('order_id',$order->id)->get() ;

        return view('admin.order.view-order-details',compact('order','customer','shipping','payment','orderDetails'));

    }


    public function viewOrderInvoice($id){
        $order = Order::find($id);
        $customer= customer::find($order->customer_id);
        $shipping= Shipping::find($order->shipping_id);
        $payment =Payment::where('order_id',$order->id)->first();
        $orderDetails=OrderDetail::where('order_id',$order->id)->get() ;
        return view('admin.order.view-order-invoice',compact('order','customer','shipping','payment','orderDetails'));
    }

    public function DownloadOrderInvoice($id){

        $order = Order::find($id);
        $customer= customer::find($order->customer_id);
        $shipping= Shipping::find($order->shipping_id);
        $payment =Payment::where('order_id',$order->id)->first();
        $orderDetails=OrderDetail::where('order_id',$order->id)->get() ;
        $pdf = PDF::loadView('admin.order.download-invoice',compact('order','customer','shipping','payment','orderDetails'));
        return $pdf->stream('invoice.pdf');


    }
    public function EditOrder($id){

        $order = Order::find($id);
        $customer= customer::find($order->customer_id);
        $shipping= Shipping::find($order->shipping_id);
        $payment =Payment::where('order_id',$order->id)->first();
        $orderDetails=OrderDetail::where('order_id',$order->id)->get() ;
        return view('admin.order.edit-order-invoice',compact('order','customer','shipping','payment','orderDetails'));


    }

    public function DeleteOrder($id){
        $order = Order::find($id);
        $order ->delete();
        return redirect('/manage/order');
    }

}

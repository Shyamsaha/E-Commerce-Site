<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Invoice</title>
    <style>
        @media print {
            @page{
                size: A3;
            }
        }
        ul{
            padding: 0;
            list-style: none;
            border-bottom: 1px solid silver;
        }
        body{
            font-family: "Palatino Linotype", "Book Antiqua", Palatino, serif;
            margin: 0;
        }
        .container{
            padding: 20px 40px;
        }
        .inv-header{
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .tableclass{

            width: 50%;
            height: 50px;
            margin-right: 0px;
            margin-left: auto;


        }
        .inv-header :nth-child(2){
            flex-basis: 30%;
        }
        .inv-title{
            padding: 10px;
            border: 1px solid silver;
            text-align: center;
            margin-bottom: 20px;
        }
        .no-margin{
            margin: 0;
        }
        .inv-logo{
            width: 150px;
        }
        .inv-header h2{
            font-size: 20px;
            margin: 1rem 0 0 0;
        }
        .inv-header ul li{
            font-size: 15px;
            padding: 3px 0;
        }

        /* table in head */
        .inv-header table{
            width: 100%;
            border-collapse: collapse;
        }
        .inv-header table th, .inv-header table td, .inv-header table{
            border: 1px solid silver;
        }
        .inv-header table th, .inv-header table td{
            text-align: right;
            padding: 8px;
        }

        /* Body */
        .inv-body{
            margin-bottom: 20px;
        }
        .inv-body table{
            width: 100%;
            border: 1px solid silver;
            border-collapse: collapse;
        }
        .inv-body table th, .inv-body table td{
            padding: 10px;
            border: 1px solid silver;
        }
        .inv-body table td h5, .inv-body table td p{
            margin: 0 5px 0 0;
        }
        /* Footer */
        .inv-footer{
            clear: both;
            overflow: auto;
        }
        .inv-footer table{
            width: 30%;
            float: right;
            border: 0px solid silver;
            border-collapse: collapse;
        }
        .inv-footer table th, .inv-footer table td{
            padding: 8px;
            text-align: left;
            border: 1px solid silver;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="inv-title bg-black">

        <h1>Invoice</h1>
    </div>
    <div class="inv-header">
        <div>
            <h1>The New Shop</h1>
            <h2>Shipping Information</h2>
            <ul>
                <li>Name   : {{$shipping->full_name}}</li>
                <li>Mobile : {{$shipping->phone_number}}</li>
                <li>Email  : {{$shipping->email_address}}</li>
            </ul>
            <h2 class="bg-aqua">Billing Information</h2>
            <ul>
                <li>Name   : {{$customer->first_name.' '.$customer->last_name}}</li>
                <li>Mobile : {{$customer->phone_number}}</li>
                <li>Email  : {{$customer->email_address}}</li>
                <li>Address: {{$customer->address}}</li>
            </ul>
        </div>
        <div class="tableclass">
            <table>
                <tr>
                    <th>Invoice No</th>
                    <td>{{$order->id}}</td>
                </tr>
                <tr>
                    <th >Date</th>
                    <td>{{$order->created_at}}</td>
                </tr>
                <tr>
                    <th>Amount Due</th>
                    <td>Tk.{{$order-> order_total }}</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="inv-body">
        <table class="table table-striped  ">
            <thead>
            <tr class="bg-black-active ">
                <th scope="col" class="text-center">SI No</th>
                <th scope="col" class="text-center">Product Id</th>
                <th scope="col" class="text-center">Product Name</th>
                <th scope="col" class="text-center">Product Price</th>
                <th scope="col" class="text-center">Product Quantity</th>
                <th scope="col" class="text-center">Total Price</th>
            </tr>
            </thead>
            <tbody>
            @php($i= 1)
            @php($sum=0)
            @foreach($orderDetails as $orderDetail)
                <tr class="text-center">

                    <td class="bg-aqua">{{$i++}}</td>
                    <td class="bg-aqua">{{ $orderDetail->product_id}}</td>
                    <td class="bg-aqua">{{ $orderDetail->product_name}}</td>
                    <td class="bg-aqua">Tk.{{ $orderDetail->product_price}}</td>
                    <td class="bg-aqua">{{ $orderDetail->product_quantity}}</td>
                    <td class="bg-aqua">Tk.{{$total=$orderDetail->product_price* $orderDetail->product_quantity}}</td>

                </tr>
                @php($sum=$sum+$total)
            @endforeach
            </tbody>

        </table>
    </div>
    <div style="float: right">
        <h3>Total Amount = Tk.{{$sum}}</h3>
    </div>
</div>


</div>
</body>
</html>

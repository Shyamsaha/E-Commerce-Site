<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[
    'uses' => 'NewShopController@index',
    'as' =>'/'
]);


Route::get('cheakout/',[
    'uses' =>'CheakoutController@cheak',
    'as'   =>'cheakout'
]);

Route::get('login/',[
    'uses' => 'LoginController@login',
    'as'   => 'login'
]);

Route::get('register/',[
    'uses' =>'RegisterController@register',
    'as'   =>'register'
]);

Route::get('products/',[
    'uses'=>'ProductsController@product',
    'as'  => 'products'
]);
Route::get('single/',[
    'uses'=>'SingleController@single',
    'as'  => 'single'
]);

Route::get('products1/',[
    'uses' => 'Product1Controller@product1',
    'as'   => 'products1'
]);

Route::get('mail/',[
    'uses' => 'MailController@mail',
    'as'   => 'mail'
]);


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/a',[
    'uses' => 'AdminController@admins',
    'as'  =>'a'
    ]);

Route::get('/index',[
    'uses' => 'IndexController@index',
    'as'  =>'index'
]);

Route::get('/add',[
    'uses' => 'AddController@add',
    'as'  =>'add'
]);

Route::post('/category',[
    'uses' => 'AddController@saveCategory',
    'as'  =>'new-category'
]);


Route::get('/manage',[
    'uses' => 'ManageController@manage',
    'as'  =>'manage'
]);

Route::get('/manage/unpublishcategory/{id}',[
    'uses' => 'ManageController@unpublishmanage',
    'as'  =>'unpublished-category'
]);

Route::get('/manage/publishcategory/{id}',[
    'uses' => 'ManageController@publishmanage',
    'as'  =>'published-category'
]);

Route::get('/manage/editcategory/{id}',[
    'uses' => 'EditcategoryController@editcategories',
    'as'  =>'edit-category'
]);

Route::post('/manage/updatecategory',[
    'uses' => 'EditcategoryController@updatecategory',
    'as'  =>'update-category'
]);
Route::post('/manage/updatecategory',[
    'uses' => 'EditcategoryController@updatecategory',
    'as'  =>'update-category'
]);
Route::get('/manage/deletecategory/{id}',[
    'uses' => 'DeletecategoryController@deletecategory',
    'as'  =>'delete-category'
]);





Route::get('/brand/addbrand',[
    'uses' => 'BrandController@addbrand',
    'as'  =>'add-brand'
]);

Route::post('/brand/addbrandinfo',[
    'uses' => 'BrandController@addbrandinfo',
    'as'  =>'add-brandinfo'
]);


Route::get('/brand/managebrand',[
    'uses' => 'BrandController@managebrand',
    'as'  =>'manage-brand'
]);





Route::get('/manage/unpublishbrand/{id}',[
    'uses' => 'BrandController@unpublishbrand',
    'as'  =>'unpublished-brand'
]);

Route::get('/manage/publishbrand/{id}',[
    'uses' => 'BrandController@publishbrand',
    'as'  =>'published-brand'
]);

Route::get('/manage/editbrand/{id}',[
    'uses' => 'BrandController@editbrand',
    'as'  =>'edit-brand'
]);

Route::post('/manage/updatebrand',[
    'uses' => 'BrandController@updatebrand',
    'as'  =>'update-brand'
]);

Route::get('/manage/deletebrand/{id}',[
    'uses' => 'BrandController@deletebrand',
    'as'  =>'delete-brand'
]);



Route::get('/product',[
    'uses' =>'ProductController@product',
    'as' =>'product'
]);
Route::post('/product/addproduct',[
    'uses' =>'ProductController@addproduct',
    'as' =>'addproduct'
]);
Route::get('/product/manage-product',[
    'uses' =>'ProductController@manage',
    'as' =>'manage-product'
]);
Route::get('/manage/unpublish-product/{id}',[
    'uses' => 'ProductController@unpublishproduct',
    'as'  =>'unpublished-product'
]);
Route::get('/manage/published-product/{id}',[
    'uses' => 'ProductController@publishproduct',
    'as'  =>'published-product'
]);

Route::get('/manage/edit-product/{id}',[
    'uses' => 'ProductController@editproduct',
    'as'  =>'edit-product'
]);
Route::post('/manage/update-product',[
    'uses' => 'ProductController@updateproduct',
    'as'  =>'update-product'
]);

Route::get('/manage/deleteproduct/{id}',[
    'uses' => 'ProductController@deleteproduct',
    'as'  =>'delete-product'
]);

Route::get('/categories-products/{id}',[
    'uses' => 'NewShopController@categoriesProducts',
    'as'  =>'categories-products'
]);

Route::get('/product-details/{id}',[
    'uses' => 'NewShopController@productDetails',
    'as'  =>'product-details'
]);

Route::post('/cart/add',[
    'uses' => 'CartController@addToCart',
    'as'  =>'add-to-cart'
]);

Route::get('/cart/show',[
    'uses' => 'CartController@showCart',
    'as'  =>'show-cart'
]);
Route::get('/cart/delete/{id}',[
    'uses' => 'CartController@deleteCart',
    'as'  =>'delete-cart-item'
]);

Route::post('/update-quantity/',[
    'uses' => 'CartController@updateCart',
    'as'  =>'update-quantity'
]);

Route::get('/customer',[
    'uses' => 'CheakoutController@index',
    'as'  =>'customer'
]);

Route::post('/customer/registration',[
    'uses' => 'CheakoutController@CustomerSignUp',
    'as'  =>'customer-sign-up'
]);

Route::post('/customer/new/customer/registration',[
    'uses' => 'CheakoutController@NewCustomerRegistration',
    'as'  =>'new-customer-registration'
]);


Route::post('/customer/Login',[
    'uses' => 'CheakoutController@CustomerLogin',
    'as'  =>'customer-login'
]);
Route::post('/customer/new/customers/login',[
    'uses' => 'CheakoutController@NewCustomersLogin',
    'as'  =>'new-customers-login'
]);

Route::post('/customer/Logout',[
    'uses' => 'CheakoutController@CustomerLogout',
    'as'  =>'customer-logout'
]);

Route::get('/customer/new-customer-login',[
    'uses' => 'CheakoutController@NewCustomerLogin',
    'as'  =>'new-customer-login'
]);

Route::get('/checkout/shipping',[
    'uses' => 'CheakoutController@shippingForm',
    'as'  =>'checkout-shipping'
]);

Route::post('/new/shipping',[
    'uses' => 'CheakoutController@newShipping',
    'as'  =>'new-shipping'
]);

Route::get('/checkout/payment',[
    'uses' => 'CheakoutController@checkoutPayment',
    'as'  =>'checkout-payment'
]);

Route::post('/new/order',[
    'uses' => 'CheakoutController@newOrder',
    'as'  =>'new-order'
]);
Route::get('/complete/order',[
    'uses' => 'CheakoutController@completeOrder',
    'as'  =>'complete-order'
]);


Route::get('/send/email',[
    'uses' => 'EmailController@sendEmail',
    'as'  =>'send-email'
]);

Route::post('/email',[
    'uses' => 'EmailController@Email',
    'as'  =>'mail'
]);
Route::get('/about/section',[
    'uses' => 'AboutController@About',
    'as'  =>'Section-About'
]);

Route::post('/know/more',[
    'uses' => 'AboutController@More',
    'as'  =>'more'
]);

Route::get('/manage/order',[
    'uses' => 'OrderController@manageOrder',
    'as'  =>'manage-order'
]);
Route::get('/view/order/details/{id}',[
    'uses' => 'OrderController@viewOrderDetails',
    'as'  =>'view-order-details'
]);
Route::get('/view/order/invoice/{id}',[
    'uses' => 'OrderController@viewOrderInvoice',
    'as'  =>'view-order-invoice'
]);
Route::get('/view/download/order/invoice/{id}',[
    'uses' => 'OrderController@DownloadOrderInvoice',
    'as'  =>'download-order-invoice'
]);

Route::get('/delete/order/{id}',[
    'uses' => 'OrderController@DeleteOrder',
    'as'  =>'delete-order'
]);

Route::get('/customer/message',[
    'uses' => 'FormController@customerMessage',
    'as'  =>'customer-message'
]);

Route::get('/delete/message/{id}',[
    'uses' => 'FormController@DeleteMessage',
    'as'  =>'delete-message'
]);



Route::get('/add/top',[
    'uses' => 'AdvertisementController@Add1Top',
    'as'  =>'add1-top'
]);
Route::post('/add1/top1',[
    'uses' => 'AdvertisementController@Add1Top1',
    'as'  =>'add1-top1'
]);
Route::get('manage/Top/Add',[
    'uses' => 'AdvertisementController@manageAddTop',
    'as'  =>'manage-addTop'
]);
Route::get('delete/Top/Add',[
    'uses' => 'AdvertisementController@deleteAddTop',
    'as'  =>'delete-add'
]);



Route::get('/add/bottom',[
    'uses' => 'AdvertisementController@Add2Top',
    'as'  =>'add2-top'
]);
Route::post('/add/bottom',[
    'uses' => 'AdvertisementController@AddBottom',
    'as'  =>'add-bottom'
]);
Route::get('/add/news',[
    'uses' => 'AdvertisementController@addNews',
    'as'  =>'add-news'
]);
Route::get('/shop/news/update',[
    'uses' => 'AdvertisementController@shopNews',
    'as'  =>'shopNews-update'
]);

Route::get('/shop/news/manage',[
    'uses' => 'AdvertisementController@manageNews',
    'as'  =>'manage-news'
]);

Route::get('/delete/news/{id}',[
    'uses' => 'AdvertisementController@deleteNews',
    'as'  =>'delete-news'
]);
Route::get('/edits/news/{id}',[
    'uses' => 'AdvertisementController@editsNews',
    'as'  =>'edits'
]);

Route::post('/insert/message',[
    'uses' => 'AdvertisementController@insertMessage',
    'as'  =>'insert-message'
]);
Route::get('/view/news',[
    'uses' => 'NewShopController@viewNews',
    'as'  =>'view-news'
]);






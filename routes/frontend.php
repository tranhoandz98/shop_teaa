<?php
Route::group(['prefix' => '/', 'namespace' => 'Frontend'], function () {
	Route::get('/','FrontendController@index')->name('home');
	// shop
	Route::get('/shop','ShopController@shop')->name('shop');
	Route::post('/shop','ShopController@loc_data');
	Route::get('shop/danh-muc/{slug}','ShopController@danh_muc')->name('danh-muc');
	Route::get('shop/{slug}/{id_detail}','ShopController@product_detail')->name('product_detail');
	// Route::post('shop/{slug}/{id_detail}','ShopController@post_product_detail');
	
	// cmt
	Route::post('shop/{id}/{id_user}','ShopController@comment')->name('comment');
	// end comment
	// login,register
	Route::get('/dang-ky.html', 'HomeController@dang_ky')->name('dang-ky');
	Route::post('/dang-ky.html', 'HomeController@post_dang_ky');
	Route::get('/dang-nhap.html', 'HomeController@dang_nhap')->name('dang-nhap');
	Route::post('/dang-nhap.html', 'HomeController@post_dang_nhap');
	Route::get('/dang-xuat.html', 'HomeController@dang_xuat')->name('dang-xuat');
	// end login
	
	// profile 
	Route::get('/tai-khoan-cua-toi.html/{id}', 'UserController@profile')->name('profile');
	Route::post('/tai-khoan-cua-toi.html/{id}', 'UserController@post_profile');
	

	Route::get('/tai-khoan-cua-toi.html/change-pass/{id}', 'UserController@change_pass')->name('change-pass');
	Route::post('/tai-khoan-cua-toi.html/change-pass/{id}', 'UserController@post_change_pass');
	// end profile
	
	// cart
	Route::get('cart', 'CartController@index')->name('cart');
	Route::post('cart/{id_detail}', 'CartController@add')->name('add-cart');
	Route::get('cart/remove/{rowId}', 'CartController@remove')->name('remove-cart');
	Route::post('cart/update/{rowId}', 'CartController@update')->name('update-cart');
	Route::get('cart/destroy', 'CartController@destroy')->name('destroy-cart');
	// end cart
	


});

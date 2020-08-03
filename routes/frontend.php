<?php
Route::group(['prefix' => '/', 'namespace' => 'Frontend'], function () {
	Route::get('/', 'FrontendController@index')->name('home');
	//hàng mới về
	Route::get('/hang-moi-ve', 'ShopController@shop_new')->name('shop-new');
	// shop
	Route::get('/shop', 'ShopController@shop')->name('shop');
	Route::post('/shop', 'SearchController@loc_data');
	Route::get('shop/danh-muc-san-pham/{slug}', 'ShopController@danh_muc')->name('danh-muc');
	//Chi tiết sản phẩm
	Route::get('shop/{slug}/{id_detail}', 'Product_detailController@product_detail')->name('product-detail');

	// cmt
	Route::post('shop/{id}/{id_user}', 'Product_detailController@comment')->name('comment');
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
	//wishlist
	Route::get('wishlist/{id_user}', 'WishlistController@index')->name('wishlist');
	Route::get('wishlist/add/{id_user}/{id_detail}', 'WishlistController@add')->name('add-wishlist');
	Route::get('wishlist/remove/{id}', 'WishlistController@remove')->name('remove-wishlist');
	Route::get('wishlist/destroy/{id_user}', 'WishlistController@destroy')->name('destroy-wishlist');
	//end wishlist
	//blog
	Route::get('blog', 'BlogController@index')->name('blog');
	Route::post('/blog', 'BlogController@loc_data');
	Route::get('blog/danh-muc-tin-tuc/{slug}', 'BlogController@danh_muc')->name('danh-muc-blog');
	Route::get('blog/{slug}/{id}', 'BlogController@blog_detail')->name('blog_detail');

	Route::get('/contact', 'FrontendController@contact')->name('contact');

});

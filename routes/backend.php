<?php

Route::group(['prefix' => 'backend', 'namespace' => 'Backend', 'middleware' => 'checkAdmin'], function () {
	Route::get('/', 'BackendController@index')->name('backend');
	Route::resources(['category' => 'CategoryController']);
	Route::resources(['product' => 'ProductController']);
	Route::resources(['attr' => 'AttrController']);
	Route::resources(['user' => 'UserController']);
	// Product_detail
	Route::get('product/{id}/product_detail', 'Product_detailController@index')->name('product_detail_backend');
	Route::post('product/{id}/product_detail/', 'Product_detailController@store');
	Route::get('product/{id}/product_detail/{id_detail}/edit', 'Product_detailController@edit')->name('edit_product_detail_backend');
	Route::post('product/{id}/product_detail/{id_detail}/edit', 'Product_detailController@update');
	Route::get('product/{id}/product_detail/{id_detail}/delete', 'Product_detailController@destroy')->name('destroy_product_detail_backend');
	Route::resources(['blog' => 'BlogController']);
	Route::resources(['banner' => 'BannerController']);
	Route::resources(['config' => 'ConfigController']);
});
Route::get('/backend/login', 'Backend\BackendController@login')->name('login');
Route::post('/backend/login', 'Backend\BackendController@postLogin');
Route::get('/backend/logout', 'Backend\BackendController@logout')->name('logout');

<?php

Route::get('/backend','BackendController@index')->name('backend');
Route::group(['prefix'=>'backend','namespace'=>'Backend'],function(){
	Route::resources(['category'=>'CategoryController']);
	Route::resources(['product'=>'ProductController']);
	Route::resources(['attr'=>'AttrController']);
	// Product_detail
	Route::get('product/{id}/product_detail','Product_detailController@index')->name('product_detail');
	Route::post('product/{id}/product_detail/','Product_detailController@store');
	Route::get('product/{id}/product_detail/{id_detail}/edit','Product_detailController@edit')->name('edit_product_detail');
	Route::post('product/{id}/product_detail/{id_detail}/edit','Product_detailController@update');
	Route::get('product/{id}/product_detail/{id_detail}/delete','Product_detailController@destroy')->name('destroy_product_detail');
	// Route::post('product{$id}/product_detail/{$id_detail}/delete','Product_detailController@destroy')->name('destroy_product_detail');

	// Route::resource('product.product_detail','Product_detailController')->shallow();
});



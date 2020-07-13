<?php

Route::get('/backend','BackendController@index')->name('backend');
Route::group(['prefix'=>'backend','namespace'=>'Backend'],function(){
	Route::resources(['category'=>'CategoryController']);
	Route::resources(['product'=>'ProductController']);
	Route::resources(['attr'=>'AttrController']);
	// Product_detail
	// Route::get('product_detail/{$id_pro}','Product_detailController@index')->name('product_detail');

	// Route::get('/product_detail/{$id_pro}/create','Product_detailController@create')->name('add_product_detail');
	// Route::post('/product_detail/{$id_pro}','Product_detailController@store');

	// Route::get('/product_detail/{$id}/edit','Product_detailController@edit')->name('edit_product_detail');
	// Route::post('/product_detail/{$id}/{$id_pro}/update','Product_detailController@update');

	// Route::delete('/product_detail/{$id}/{$id_pro}/delete','Product_detailController@destroy')->name('destroy_product_detail');

	Route::resources(['product_detail'=>'Product_detailController']);
});



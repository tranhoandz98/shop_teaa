<?php

Route::get('/','FrontendController@index')->name('frontend');
Route::get('/shop','FrontendController@shop')->name('shop');
Route::get('product_detail/{id}','FrontendController@product_detail')->name('product_detail');

// Route::group(['prefix'=>'/','namespace'=>'Frontend'],function(){
// });
?>



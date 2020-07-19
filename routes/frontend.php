<?php

Route::get('/','FrontendController@index')->name('frontend');
Route::get('/shop','FrontendController@shop')->name('shop');
Route::get('product_detail/{id}','FrontendController@product_detail')->name('product_detail');

Route::get('/dang-ky', 'HomeController@dangky')->name('dang-ky');
Route::get('/dang-nhap', 'HomeController@dangnhap')->name('dang-nhap');
?>



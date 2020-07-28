<?php

Route::get('/','FrontendController@index')->name('home');
Route::get('/shop','FrontendController@shop')->name('shop');
Route::post('/shop','FrontendController@loc_data');
Route::get('/shop','FrontendController@shop')->name('danh-muc');

Route::get('shop/{slug}/{id_detail}','FrontendController@product_detail')->name('product_detail');
Route::post('shop/{slug}/{id_detail}','FrontendController@post_product_detail');

Route::get('/dang-ky.html', 'HomeController@dang_ky')->name('dang-ky');
Route::post('/dang-ky.html', 'HomeController@post_dang_ky');
Route::get('/dang-nhap.html', 'HomeController@dang_nhap')->name('dang-nhap');
Route::post('/dang-nhap.html', 'HomeController@post_dang_nhap');
Route::get('/dang-xuat.html', 'HomeController@dang_xuat')->name('dang-xuat');
Route::get('/tai-khoan-cua-toi.html', 'HomeController@profile')->name('profile');



<?php

Route::get('/','FrontendController@index')->name('home');
Route::get('/shop','FrontendController@shop')->name('shop');
Route::get('product_detail/{id}','FrontendController@product_detail')->name('product_detail');

Route::get('/dang-ky', 'HomeController@dangky')->name('dang-ky');
Route::post('/dang-ky', 'HomeController@postDangky');
Route::get('/dang-nhap', 'HomeController@dangnhap')->name('dang-nhap');
Route::post('/dang-nhap', 'HomeController@postDangnhap');
Route::get('/dang-xuat', 'HomeController@dangxuat')->name('dang-xuat');
Route::get('/tai-khoan-cua-toi', 'HomeController@profile')->name('profile');



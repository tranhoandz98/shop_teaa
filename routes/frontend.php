<?php

Route::get('/','FrontendController@index')->name('frontend');
Route::get('/shop','FrontendController@shop')->name('shop');

// Route::group(['prefix'=>'/','namespace'=>'Frontend'],function(){
// });
?>



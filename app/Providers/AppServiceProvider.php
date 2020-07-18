<?php

namespace App\Providers;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use App\Models\Category;
use App\Models\Product;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('*',function($view){
            $view->with('category_pro',Category::where([['status','=','1'],['parent_id','=','0'],['type','=','1']])->orderby('name')->get());
            $view->with('category_pa',Category::where([['status','=','1'],['parent_id','=','1'],['type','=','1']])->orderby('name')->get());
        });
    }


}

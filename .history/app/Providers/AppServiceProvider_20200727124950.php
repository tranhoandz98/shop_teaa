<?php

namespace App\Providers;
use App\Models\Category;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider {
	/**
	 * Register any application services.
	 *
	 * @return void
	 */
	public function register() {
		//
	}

	/**
	 * Bootstrap any application services.
	 *
	 * @return void
	 */
	public function boot() {
		View::composer('*', function ($view) {
			$view->with('category_pro', Category::where([['status', '=', '1'], ['parent_id', '=', ''], ['type', '=', '1']])->orderby('name')->get());
			$view->with('category_pa', Category::where([['status', '=', '1'], ['parent_id', '=', '1'], ['type', '=', '1']])->orderby('name')->get());

		});
	}

}

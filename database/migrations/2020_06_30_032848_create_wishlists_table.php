<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWishlistsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('wishlists', function (Blueprint $table) {
			$table->increments('id');
			$table->unsignedInteger('id_product');
			$table->unsignedInteger('id_user');
			$table->tinyInteger('status')->default(1)->comment('1 la Hien, 0 la An');
			$table->timestamps();
			$table->foreign('id_user')->references('id')->on('users');
			$table->foreign('id_product')->references('id')->on('products');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('wishlists');
	}
}

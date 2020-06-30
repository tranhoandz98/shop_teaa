<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('orders', function (Blueprint $table) {
			$table->increments('id');
			$table->unsignedInteger('id_user');
			$table->float('total_price');
			$table->string('address_ship');
			$table->string('note');
			$table->tinyInteger('status')->default(1)->comment('1 là Hiện, 0 là Ẩn');
			$table->timestamps();
			$table->foreign('id_user')->references('id')->on('users');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('orders');
	}
}

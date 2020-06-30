<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductAttrsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('product_attrs', function (Blueprint $table) {
			$table->increments('id');
			$table->unsignedInteger('id_attr');
			$table->unsignedInteger('id_pro_detail');
			$table->foreign('id_attr')->references('id')->on('attrs');
			$table->foreign('id_pro_detail')->references('id')->on('product_details');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('product_attrs');
	}
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAttrsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('attrs', function (Blueprint $table) {
			$table->increments('id');
			$table->string('name')->unique();
			$table->string('slug');
			$table->string('value');
			// $table->unsignedInteger('id_pro_detail');
			$table->tinyInteger('status')->default(1)->comment('1 la Hien, 0 la An');
			$table->timestamps();
			// $table->foreign('id_pro_detail')->references('id')->on('product_details');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('attrs');
	}
}

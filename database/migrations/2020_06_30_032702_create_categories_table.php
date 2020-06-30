<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('categories', function (Blueprint $table) {
			$table->increments('id');
			$table->string('name')->unique();
			$table->string('slug');
			$table->tinyInteger('status')->default(1)->comment('1 là Hiện, 0 là Ẩn');
			$table->string('type')->default(1)->comment('1 là Danh mục sản phẩm,0 là Danh mục tin tức');;
			$table->unsignedInteger('parent_id');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('categories');
	}
}

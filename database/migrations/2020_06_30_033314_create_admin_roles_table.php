<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAdminRolesTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('admin_roles', function (Blueprint $table) {
			$table->increments('id');
			$table->unsignedInteger('id_admin');
			$table->unsignedInteger('id_role');
			$table->Integer('route_name');
			$table->timestamps();
			$table->foreign('id_admin')->references('id')->on('admins');
			$table->foreign('id_role')->references('id')->on('roles');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('admin_roles');
	}
}

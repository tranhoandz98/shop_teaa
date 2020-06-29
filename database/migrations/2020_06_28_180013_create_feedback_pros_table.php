<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFeedbackProsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('feedback_pros', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_product');
            $table->unsignedInteger('id_user');
            $table->Integer('star');
            $table->text('content');         
            $table->Integer('parent_id')->default(0);
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
    public function down()
    {
        Schema::dropIfExists('feedback_pros');
    }
}

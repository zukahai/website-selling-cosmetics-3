<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('firstName');
            $table->string('lastName');
            $table->timestamp('birthDate');
            $table->string('phoneNumber')->unique();
            $table->string('email');
            $table->string('password');
            $table->string('streetName');
            $table->string('streetNumber');
            $table->string('district');
            $table->string('city');
            $table->string('urlAvata');
            $table->unsignedBigInteger('status');
            $table->unsignedBigInteger('role');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
};

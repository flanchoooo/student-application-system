<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{

    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('S_name');
            $table->string('S_surname');
            $table->string('S_gender');
            $table->string('S_Location');
            $table->string('S_dob');
            $table->string('S_address');
        });
    }

  
    public function down()
    {
        Schema::dropIfExists('students');
    }
};

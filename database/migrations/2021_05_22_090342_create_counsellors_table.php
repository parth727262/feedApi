<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCounsellorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('counsellors', function (Blueprint $table) {
            $table->id();
            $table->string('counsellor_name');
            $table->string('counsellor_whatsapp_no');
            $table->string('counsellor_contact_number');
            $table->string('counsellor_email');
            $table->string('day_avaliability');
            $table->string('time_avaliability');
            $table->boolean('avaliability_status');
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
        Schema::dropIfExists('counsellors');
    }
}

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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('customer_name'); 
            $table->string('customer_email'); 
            $table->string('customer_mobile'); 
            $table->string('id_product'); 
            $table->text('requestId')->nullable();
            $table->text('reference')->nullable();
            $table->text('processUrl')->nullable();
            $table->string('status'); 
            $table->text('message')->nullable();
            $table->text('date_trans')->nullable();
            $table->text('method')->nullable();
            $table->text('ref_int')->nullable();
            $table->text('bank')->nullable();
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
        Schema::dropIfExists('orders');
    }
};

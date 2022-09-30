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
            $table->text('requestId'); 
            $table->text('reference'); 
            $table->text('processUrl'); 
            $table->string('status'); 
            $table->text('message'); 
            $table->text('date_trans'); 
            $table->text('method'); 
            $table->text('ref_int'); 
            $table->text('bank'); 
            $table->text('id_cliente'); 
            $table->text('llave_secreta'); 
            $table->text('token');
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

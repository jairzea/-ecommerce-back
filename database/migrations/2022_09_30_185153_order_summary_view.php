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
        DB::statement("CREATE OR REPLACE VIEW order_summary_view AS
        SELECT 
            orders.customer_name AS nombre, 
            orders.customer_email AS email, 
            products.name AS nombre_producto, 
            products.description AS descripcion_producto, 
            products.price AS precio_producto, 
            products.img AS imagen_producto, 
            orders.id AS id_orden, 
            orders.customer_mobile AS telefono, 
            orders.token 
        FROM orders orders
        INNER JOIN products products
            ON orders.id_product = products.id");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("DROP VIEW IF EXISTS order_summary_view");
    }

};


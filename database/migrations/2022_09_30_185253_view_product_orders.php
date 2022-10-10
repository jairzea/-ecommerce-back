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
        DB::statement("CREATE OR REPLACE VIEW view_product_orders AS
        SELECT 
            o.customer_name AS nombre, 
            o.customer_mobile AS telefono, 
            o.customer_email AS email,
            o.created_at, 
            o.id_product AS id_producto, 
            o.status AS estado, 
            o.processUrl AS url_pago, 
            o.reference AS referencia_orden, 
            o.requestId, 
            o.updateD_at, 
            o.id AS id_orden, 
            p.name AS nombre_producto, 
            p.price AS precio_producto, 
            p.img AS imagen_producto, 
            p.description AS descripcion_producto
        FROM orders o
        INNER JOIN products p
            ON o.id_product = p.id");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        \DB::statement("DROP VIEW IF EXISTS view_product_orders");
    }

    
};

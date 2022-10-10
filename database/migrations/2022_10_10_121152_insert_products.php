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
        DB::statement("INSERT INTO `products` (`id`, `sales`, `name`, `description`, `price`, `img`, `created_at`, `updated_at`) VALUES
        (1, NULL, 'Zapatos elegantes 1', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</span><br></p>', 200000, 'https://i2.wp.com/www.zapatos.shopping/wp-content/uploads/2015/01/zapatos-hombre.jpg', '2021-01-27 05:22:27', '2021-01-27 07:53:03'),
        (2, NULL, 'Zapatos elegantes 2', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</span><br></p>', 300000, 'https://falabella.scene7.com/is/image/FalabellaCO/4193337_1?wid=800&hei=800&qlt=70', '2021-01-27 05:23:15', '2021-01-27 07:44:51'),
        (3, NULL, 'Zapatos elegantes 3', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</span><br></p>', 400000, 'https://repunte.com/wp-content/uploads/2018/05/Botines.jpg', '2021-01-27 05:23:53', '2021-01-27 18:55:20'),
        (4, NULL, 'Zapatos elegantes 1ñ', 'my description', 45000, 'test', '2022-10-02 01:40:15', '2022-10-02 01:40:15');
        ");
    }


    
};

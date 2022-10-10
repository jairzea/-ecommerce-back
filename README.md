# Prueba de Evertect

## Backend Tienda en linea

### Configuración de proyecto en local

# Requisitos previos

-   Asegurese de tener PHP instalado en su equipo
-   Asegurese de tener Laravel en su equipo
-   Asegurese de tener un servidor apache o de base de datos para gestionar la misma.
-   Asegurese de tener la extensión soap habilitada en su archio php.ini

# Siguientes pasos

-   git clone https://github.com/jairzea/ecommerce-back.git
-   cd /carpeta-proyecto
-   Cree una base de datos en su servidor

# Configuración de variables de entonro

-   Especifique los datos de conexión de la base de datos creada en el archivo .env.example

```HTML
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=
```

-   Especifigue los datos de conexión a la pasarela de pago

```HTML
LOGIN=
SECRET_KEY=
SERVICE_BASE_URL=
```

-   si lo desea, puede cambiar REFERENCE_INTERFIX por el interfix que usted desee

-   Guarde el archivo .env.example como .env

-   ejecute en la terminal los siguientes comandos

## `composer install`

-   Luego de hacer `composer install`, pegue la siguiente linea en el archivo composer.json `"dnetix/redirection": "^1.0",` en el objeto de require

## `php artisan key:generate`

## `php artisan migrate` Para reconstruir la base de datos. Si existe algún inconveniente al migrar la base de datos, puede tomar el archivo test.sql en el directorio /database eh importarlo

## `php artisan serve` Para ejecutar la aplicación

### Tests

-   Cree una nueva base de datos que se usara para hacer las transacciones de prueba mientras son ejecutadas

-   Importe el archivo .sql de muestra en el proyecto a su base de datos de pruebas

# Configuración de variables de entonro

-   Especifique los datos de conexión de la base de datos de prueba creada en el archivo .env.testing

```HTML
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=test
DB_USERNAME=root
DB_PASSWORD=
```

-   Especifigue los datos de conexión a la pasarela de pago

```HTML
LOGIN=
SECRET_KEY=
SERVICE_BASE_URL=
```

-   si lo desea, puede cambiar REFERENCE_INTERFIX por el interfix que usted desee

-   ejecute en la terminal los siguientes comandos

## `php artisan test`

## Demo de la aplicacion

https://#

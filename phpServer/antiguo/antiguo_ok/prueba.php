<?php

$hostname_localhost="localhost";
$database_localhost="id17105432_gorgojo";
$username_localhost="id17105432_gorgojo232";
$password_localhost="Peru2322715.";

$enlace = mysqli_connect($hostname_localhost, $username_localhost, $password_localhost, $database_localhost);

if (!$enlace) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

echo "Éxito: Se realizó una conexión apropiada a MySQL! La base de datos mi_bd es genial." . PHP_EOL;
echo "Información del host: " . mysqli_get_host_info($enlace) . PHP_EOL;

mysqli_close($enlace);
?>
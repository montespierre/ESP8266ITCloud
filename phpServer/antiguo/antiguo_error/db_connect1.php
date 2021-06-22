<?php

$hostname_localhost="localhost";
$database_localhost="id17105432_gorgojo";
$username_localhost="id17105432_gorgojo232";
$password_localhost="Setiembre23.";

class DB_CONNECT{

	//Constructor
	function __construct(){
		// tratando de conectarse a la bd
		$this->connect();
	}

	//Destructor
	function __destruct(){
		// cerrando la conexion a la bd
		$this->close();
	}

	// Funcion para conectarse a la bd
	function connect(){

		// importando dbconfig.php archivo que contiene las credenciales de bd
		$filepath = realpath(dirname(__FILE__));

		require_once($filepath."/db_config.php");

		// Conectandose a la bd mysql
		//$con = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD) or die(mysql_error());
		$con = mysqli_connect($hostname_localhost, $username_localhost, $password_localhost, $database_localhost);

		mysqli_set_charset($con, "utf8_unicode_ci");

		// retornar el cursor connectin
		return $con;
	}

	// Funcion para cerrar la bd
	function close(){
		// cerrando la conexion de la bd
		mysql_close();
	}
}


?>


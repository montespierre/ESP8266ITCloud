<?php
class DB_CONNECT {
 
    // Constructor
    function __construct() {
        // Trying to connect to the database
        $this->connect();
    }
 
    // Destructor
    function __destruct() {
        // Closing the connection to database
        $this->close();
    }
 
   // Function to connect to the database
    function connect() {
        //importing dbconfig.php file which contains database credentials 
        $filepath = realpath (dirname(__FILE__));
        require_once($filepath."/dbconfig.php");
        
		// Connecting to mysql (phpmyadmin) database
        $con = mysql_connect("localhost:3306", "id17105432_gorgojo232", "niif{lzT3n\2\^E]") or die(mysql_error());
 
        // Selecing database
        $db = mysql_select_db("id17105432_gorgojo") or die(mysql_error()) or die(mysql_error());
 
        // returing connection cursor
        return $con;
    }
 
	// Function to close the database
    function close() {
        // Closing data base connection
        mysql_close();
    }
 
}
 
?>
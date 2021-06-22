<?php

$hostname_localhost="localhost";
$database_localhost="id17105432_gorgojo";
$username_localhost="id17105432_gorgojo232";
$password_localhost="Peru2322715.";

$json=array();
 if(isset($_GET["temp"]) && isset($_GET["hum"])){
  $temp=$_GET['temp'];
  $hum=$_GET['hum'];

  $conexion = new mysqli($hostname_localhost, $username_localhost, $password_localhost, $database_localhost);

 
  
  
    
  $insert="INSERT INTO weather(temp, hum) VALUES ('{$temp}','{$hum}')";
  
  
 
  if($conexion->query($insert)===TRUE){
   
   
   $resultado = $conexion->query("SELECT * FROM weather WHERE temp = '{$temp}'");
   //$resultado=mysqli_query($conexion, $consulta);
  
   if($registro=mysqli_fetch_array($resultado)){
    $json['medicion'][]=$registro;
   }
   mysqli_close($conexion);
   echo json_encode($json);
   
  }else{
   $resulta["temp"]="NO registra";
   $resulta["hum"]="NO registra";
   $json['medicion'][]=$resulta;
   echo json_encode($json);
  }
 }else{
  $resulta["temp"]="WS NO retorna";
  $resulta["hum"]="WS NO retorna";
  $json['medicion'][]=$resulta;
  echo json_encode($json);
 }

?>
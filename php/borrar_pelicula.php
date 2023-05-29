<?php
include "../php/conexion.php";
$sql = 'DELETE FROM traducciones WHERE pelicula_id="'.$_POST["id"].'"';
$query = $con->query($sql);

$sql = 'DELETE FROM denominacion WHERE pelicula_id="'.$_POST["id"].'"';
$query = $con->query($sql);

$sql = 'DELETE FROM pelicula WHERE id="'.$_POST["id"].'"';
$query = $con->query($sql);

print "<script>alert(\"Eliminado correctamente\");window.location='/';</script>"; 

?>
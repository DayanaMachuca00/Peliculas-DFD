<?php
include "../php/conexion.php";

$sql = 'UPDATE pelicula SET nombre="'.$_POST["nombre"].'",fecha_lanzamiento="'.$_POST["fecha"].'",duracion="'.$_POST["duracion"].'",sinopsis="'.$_POST["sinopsis"].'",link_caratula="'.$_POST["link"].'" WHERE id="'.$_POST["id"].'"';
$query = $con->query($sql);

$sql = 'UPDATE traducciones SET idioma_id="'.$_POST["idioma"].'",link_pelicula="" WHERE pelicula_id="'.$_POST["link_pelicula"].'";';
$query = $con->query($sql);


print "<script>alert(\"Edición aplicada correctamente\");window.location='/';</script>";  
?>
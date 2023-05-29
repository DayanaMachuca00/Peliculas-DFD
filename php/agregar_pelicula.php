<?php
include "conexion.php";
$actual = date_create(date('Y-m-d'));
$fecha = date_create($_POST["fecha"]);
$interval = date_diff($actual, $fecha);
$dias = $interval->format('%a') + 0;
if ($dias <= 183) {
    $es_Estreno = 1;
} else {
    $es_Estreno = 0;
}

$sql = 'INSERT INTO pelicula (nombre, fecha_lanzamiento, duracion, sinopsis, es_estreno, link_caratula) VALUES ("'.$_POST["nombre"].'","'.$_POST["fecha"].'","'.$_POST["duracion"].'","'.$_POST["sinopsis"].'",'.$es_Estreno.',"'.$_POST["link"].'");';

$query = $con->query($sql);


$sql = "SELECT MAX(id) AS id FROM pelicula";
$query = $con->query($sql);
while ($r = $query->fetch_array()) {
    $id_pelicula = $r["id"];
    break;
}


for ($i = 0; $i < $_POST["total"]; $i++) {
    if (isset($_POST["gen" . $i])) {
        $sql = 'INSERT INTO denominacion(pelicula_id, genero_id) VALUES ('.$id_pelicula.','.$_POST["gen" . $i].');';
        $query = $con->query($sql);             
    }
}


$sql = 'INSERT INTO traducciones(pelicula_id, idioma_id, link_pelicula) VALUES ('.$id_pelicula.','.$_POST["idioma"].',"'.$_POST["link_pelicula"].'");';        
$query = $con->query($sql);

print "<script>alert(\"Agregado Correctamente\");window.location='/';</script>";      
?>        


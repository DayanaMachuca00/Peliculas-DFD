<?php
include "conexion.php";
$sql1 = '
select p.id as id, CONCAT(DAY(p.fecha_lanzamiento)," de ",MONTHNAME(p.fecha_lanzamiento)," de ",YEAR(p.fecha_lanzamiento)) as fecha, (HOUR(p.duracion)*60+MINUTE(p.duracion)) as duracion, g.nombre as genero, i.nombre as idioma, t.link_pelicula as link, p.link_caratula as foto, p.sinopsis as sinopsis from pelicula p join denominacion d on p.id = d.pelicula_id inner join genero g on g.id = d.genero_id inner join traducciones t on t.pelicula_id = p.id inner JOIN idioma i on i.id = t.idioma_id where p.nombre = "' . $_GET["value"] . '";';

$query = $con->query($sql1);
$con = 0;
$coni = 0;
while ($r = $query->fetch_array()) {
    if ($coni == 0) {
        $id = $r["id"];
        $idioma[$coni] = $r["idioma"];
        $link[$coni] = $r["link"];
        $duracion = $r["duracion"];
        $fecha = $r["fecha"];
        $foto = $r["foto"];
        $sinopsis = $r["sinopsis"];
        $coni++;
    }
    if ($coni >= 1) {
        if ($idioma[$coni - 1] != $r["idioma"]) {
            $idioma[$coni] = $r["idioma"];
            $coni++;
        }
    }
    $genero[$con] = $r["genero"];
    $con++;
}

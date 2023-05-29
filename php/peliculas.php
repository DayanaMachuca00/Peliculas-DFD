<?php
include "conexion.php";
if (isset($_GET["busqueda"])) {
    $consulta = "SELECT * FROM pelicula WHERE MATCH (nombre,sinopsis) AGAINST ('" . $_GET["busqueda"] . "' IN BOOLEAN MODE);";
    $query = $con->query($consulta);
    if (mysqli_num_rows($query) == 0) {
        $consulta = "Select * from pelicula where nombre like '%" . $_GET["busqueda"] . "%'";
    }
} else {
    $consulta = "Select * from pelicula";
}
$query = $con->query($consulta);
if (mysqli_num_rows($query) == 0) {
    echo '    
        <h4 class="text-white m-5">No se encontro ningun resultado con la busqueda "'.$_GET["busqueda"].'"</h4>"
    
    ';
} else {
    while ($r = $query->fetch_array()) {
        echo '
    <div class="col-lg-3 col-md-4 col-6">
        <a href="page/pelicula.php?value=' . $r["nombre"] . '">
            <img class="rounded-3 my-3" src="' . $r["link_caratula"] . '">            
        </a>
    </div>
                            ';
    }
}

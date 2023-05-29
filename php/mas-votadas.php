<h4 class="mt-2"><span class="badge bg-violet d-block">Mas votadas</span></h4>
<?php
    include "conexion.php";

    $consulta = "select p.nombre, YEAR(p.fecha_lanzamiento) as año, AVG(r.calificacion),p.link_caratula from pelicula p inner join reseña r on p.id = r.pelicula_id group by p.nombre order by avg(r.calificacion) desc limit 5";
    $query = $con->query($consulta);
    $contador = 1;    
    while ($r=$query->fetch_array()) {                 
        echo '
        <a href="page/pelicula.php?value=' . $r["nombre"] .'">
        <div class="row py-1 mx-auto">        
            <div class="col-6">                
                <img class="rounded-3 w-100" src="' . $r["link_caratula"] . '">
            </div>
            <div class="col-6">            
                <h6>'. $r["nombre"] .'</h6>                
                <h6"><span class="badge bg-violet">'.$r["año"].'</span></h6>             
            </div>        
        </div>
        </a>
                                ';
        $contador++;
    }        
?>
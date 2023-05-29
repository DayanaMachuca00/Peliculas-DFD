<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dino Furros Donas</title>
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Macondo&display=swap" rel="stylesheet">

    <!--Link bootstrap-->
</head>

<body class="bg-black">
    <header>
        <?php include "../php/navbar.php"; ?>
    </header>
    <main class="mt-4">
        <div class="container mt-5 pt-3">
            <div class="row bg-dark">
                <section class="col-lg-6 col-12 text-white mx-auto d-block my-5">
                    <h3 class="text-center">Editar pelicula </h3>
                    <?php
                    include "../php/conexion.php";
                    $consulta = "SELECT p.id, p.nombre as nombre_p, p.fecha_lanzamiento as fecha, p.duracion as duracion, p.sinopsis as sinopsis, p.link_caratula as link_c,t.link_pelicula as link_p, i.nombre as idioma FROM pelicula p inner join traducciones t on p.id = t.pelicula_id inner join idioma i on i.id = t.idioma_id where p.id=" . $_POST["id"] . "";
                    $query = $con->query($consulta);
                    while ($r = $query->fetch_array()) {
                        $id = $r["id"];
                        $nombre = $r["nombre_p"];
                        $fecha = $r["fecha"];
                        $duracion = $r["duracion"];
                        $resumen = $r["sinopsis"];
                        $link_c = $r["link_c"];
                        $link_p = $r["link_p"];
                        $idioma = $r["idioma"];
                    }                    
                    ?>

                    <form class="needs-validation" role="form" name="login" action="../php/editar_pelicula.php" method="post" novalidate>
                        <div class="form-group my-4">
                            <label for="nombre">Nombre de la pelicula</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre de la pelicula" required value="<?php echo $nombre ?>">
                        </div>
                        <div class="form-group my-4">
                            <label for="fecha">Fecha de lanzamiento</label>
                            <input type="date" class="form-control" id="fecha" name="fecha" required value="<?php echo $fecha ?>">
                        </div>
                        <div class="form-group my-4">
                            <label for="duracion">Duracion de la pelicula</label>
                            <input type="text" class="form-control" id="duracion" name="duracion" required placeholder="00:00" required value="<?php echo $duracion ?>">
                        </div>
                        <div class=" form-group my-4">
                            <label for="sinopsis">Sinopsis</label>
                            <textarea type="text" class="form-control" id="sinopsis" name="sinopsis" placeholder="Ingresa un breve resumen" required><?php echo $resumen ?></textarea>
                        </div>
                        <div class=" form-group my-4">
                            <label for="link">Link de la caratula de la pelicula</label>
                            <input type="text" class="form-control" id="link" name="link" placeholder="Link" required value="<?php echo $link_c ?>">
                        </div>
                        <div class="form-group my-4">
                            <label for="idioma">Idioma</label>
                            <select class="form-control" id="idioma" name="idioma">

<?php
$consulta = "select * from idioma";
$query = $con->query($consulta);
while ($r = $query->fetch_array()) {
    if ($r["nombre"] == $idioma) {
        echo '<option value="' . $r["id"] . '" selected>' . $r["nombre"] . '</option>';
    } else {
        echo '<option value="' . $r["id"] . '">' . $r["nombre"] . '</option>';
    }
}
?>
                            </select>
                        </div>

                        <div class="form-group my-4">
                            <label for="link_pelicula">Link de la pelicula</label>
                            <input type="text" class="form-control" id="link_pelicula" name="link_pelicula" placeholder="Link de la pelicula" required value="<?php echo $link_p ?>">
                        </div>
                        <input type="hidden" class="form-control" name="id" value="<?php echo $id ?>">
                        <button type="submit" class="btn btn-outline-info d-block mx-auto w-100">Actualizar pelicula</button>
                    </form>

                    <form class="needs-validation my-3" role="form" name="login" action="../php/agregar_pelicula.php" method="post" novalidate>
                    <div class="form-group">                            
                    <input type="hidden" class="form-control" name="id" value="<?php echo $id ?>">
                    </div>
                    <button type="submit" class="btn btn-outline-danger d-block mx-auto w-100">Borrar Pelicula</button>
                    </form>
            </div>
        </div>
        </div>
    </main>
    <footer>
        <?php include "../php/footer.php"; ?>
    </footer>

    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
    <script src="../js/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="../js/validation.js"></script>
    <!--Script bootstrap-->
</body>


</html>
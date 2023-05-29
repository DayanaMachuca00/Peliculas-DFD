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
        <?php include "../php/navbar.php";?>
    </header>
    <main class="mt-4">
        <div class="container mt-5 pt-3">
            <div class="row bg-dark">
                <section class="col-lg-6 col-12 text-white mx-auto d-block my-5">
                    <h3 class="text-center">Agregar pelicula</h3>
                    <form class="needs-validation" role="form" name="login" action="../php/agregar_pelicula.php" method="post" novalidate>
                        <div class="form-group my-4">
                            <label for="nombre">Agrega una nueva pelicula</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre de la pelicula" required>
                        </div>
                        <div class="form-group my-4">
                            <label for="fecha">Fecha de lanzamiento</label>
                            <input type="date" class="form-control" id="fecha" name="fecha" required>
                        </div>
                        <div class="form-group my-4">
                            <label for="duracion">Duracion de la pelicula</label>
                            <input type="text" class="form-control" id="duracion" name="duracion" required placeholder="00:00" required>
                        </div>
                        <div class="form-group my-4">
                            <label for="sinopsis">Sinopsis</label>
                            <textarea type="text" class="form-control" id="sinopsis" name="sinopsis" required placeholder="Ingresa un breve resumen de la historia"></textarea>
                        </div>
                        <div class="form-group my-4">
                            <label for="link">Link de la caratula de la pelicula</label>
                            <input type="text" class="form-control" id="link" name="link" placeholder="Link" required>
                        </div>
                        <div class="form-group my-4">
                            <label>Selecciona los generos a los que pertenece la pelicula</label>
                            <div class="container-fluid">
                                <div class="row mt-3">

                                    <?php
include "../php/conexion.php";
$consulta = "select * from genero ORDER BY nombre";
$query = $con->query($consulta);
$contadorGenero = 0;
while ($r = $query->fetch_array()) {

    echo '
    <div class="col-lg-4 col-6 my-1 p-0 m-0">
      <input class="form-check-input"  name="gen'.$r["id"].'" type="checkbox" value="' . $r["id"] . '">
      <label class="form-check-label" for="gen' . $r["id"] . '">
        ' . $r["nombre"] . '
      </label>
    </div>
    ';
    $contadorGenero++;
}

echo '<input  name="total" type="hidden" value="' . $contadorGenero. '">';
?>
                                </div>
                            </div>
                        </div>

                        <div class="form-group my-4">
                            <label for="idioma">Idioma</label>
                            <select class="form-control" id="idioma" name="idioma">

<?php
$consulta = "select * from idioma";
$query = $con->query($consulta);
while ($r = $query->fetch_array()) {
    echo '<option value="' . $r["id"] . '">' . $r["nombre"] . '</option>';
}
?>
                            </select>
                        </div>

                        <div class="form-group my-4">
                            <label for="link_pelicula">Link de la pelicula</label>
                            <input type="text" class="form-control" id="link_pelicula" name="link_pelicula" placeholder="Link de la pelicula" required>
                        </div>

                        <button type="submit" class="btn btn-outline-info d-block mx-auto w-100">Agregar pelicula</button>
                    </form>
            </div>
        </div>
        </div>
    </main>
    <footer>
        <?php include "../php/footer.php";?>
    </footer>

    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
    <script src="../js/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="../js/validation.js"></script>
    <!--Script bootstrap-->
</body>


</html>
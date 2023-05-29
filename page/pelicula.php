<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php
    echo '<title>' . $_GET["value"] . '</title>';
    ?>

    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
</head>

<body class="bg-black">
    <header>
        <?php include "../php/navbar.php"; ?>
    </header>
    <?php include "../php/una-pelicula.php" ?>
    <main class="mt-4">
        <div class="container mt-5 pt-3 bg-dark">
            <div class="row">
                <div class="col-lg-3 col-8 my-3 mx-auto">
                    <img class="mx-auto d-block" src=<?php echo "" . $foto . " alt='" . $_GET["value"] . "'" ?>>
                </div>
                <div class="col-lg-9 col-12 text-white">
                    <div class="row my-3">
                        <h4><?php echo "" . $_GET["value"] ?></h4>
                    </div>
                    <div class="row my-3">
                        <div class="col-12">
                            <h6>Título original: <span class="text"><?php echo "" . $_GET["value"]; ?></span></h6>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="col-6">
                            <h6>Fecha de lanzamiento: <span class="text"><?php echo "" . $fecha ?></span></h6>
                        </div>
                        <div class="col-6">
                            <h6>Duracion: <span class="text"><?php echo "" . $duracion . " minutos"; ?></span></h6>
                        </div>
                    </div>
                    <div class="row my-3">
                        <h6>Genero: <?php
                                    for ($i = 0; $i < $con; $i++) {
                                        echo '<span class="badge bg-violet mx-1">' . $genero[$i] . '</span>';
                                    }
                                    ?></h6>
                    </div>
                    <div class="row my-3">
                        <h6>Idioma: <?php
                                    for ($i = 0; $i < $coni; $i++) {
                                        echo '<span class="badge bg-violet mx-1">' . $idioma[$i] . '</span>';
                                    }
                                    ?></h6>
                    </div>
                    <div class="row my-3">
                        <h6>Sinopsis:</h6>
                        <p><?php echo "" . $sinopsis ?></p>
                    </div>
                    <?php
                    if (isset($_SESSION["rol"])) {
                        if ($_SESSION["rol"] == "admin") {
                            echo '
                            <div class="row mb-5">
                            <div class="col">
                                <form class="needs-validation" role="form" name="login" action="../page/editarEliminar_pelicula.php" method="post" novalidate>
                                    <div class="form-group">
                                        <input type="hidden" id="id" name="id" value="'.$id.'">
                                    </div>
                                    <button type="submit" class="btn btn-outline-info d-block mx-auto w-100">Editar pelicula</button>
                                </form>
                            </div>
                        </div>
                            ';
                        }
                    }


                    ?>


                    <div class="row my-3">
                        <div class="col-10 mx-auto">
                            <iframe width="100%" height="600px" src="<?php echo "" . $link[0]; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </main>
    <footer>
        <?php include "../php/footer.php"; ?>
    </footer>
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
    <script src="../js/bootstrap/bootstrap.bundle.min.js"></script>
</body>

</html>
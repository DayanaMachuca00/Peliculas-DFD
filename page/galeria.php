<?php
session_start();
?>
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

<body class="bg-black text-white">
    <header>
        <?php include "../php/navbar.php"; ?>
    </header>
    <main class="mt-4">
    <section id="galeria" class="container bg-light bg-opacity-25 my-5">
        <h3 class="text-center pt-5" id="Fotos">Wallpapers</h3>

        <div class="row">
            <?php
            include "../php/conexion.php";
            $consulta = "select id, link from wallpapers";
            $query = $con->query($consulta);

            while ($r = $query->fetch_array()) {
                echo '
        <div class="col-lg-4 col-md-6 col-sm-12 p-3" data-bs-toggle="modal" data-bs-target="#modalCH'.$r['id'].'">
            <img src="'.$r['link'].'" alt="Galeria Imagen">
        </div>
                            ';
            }

            ?>
        </div>
    </section>
    <!--Intento-->
    <?php
            include "../php/conexion.php";
            $consulta = "select id, link from wallpapers";
            $query = $con->query($consulta);

            while ($r = $query->fetch_array()) {
                echo '
                <div tabindex="-1" aria-labelledby="modalCH'.$r['id'].'" aria-hidden="true" class="modal fade" id="modalCH'.$r['id'].'">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content">
                        <img src="'.$r['link'].'" alt="">
                    </div>
                </div>
            </div>
                            ';
            }

            ?>
    </main>
    <footer>
        <?php include "../php/footer.php"; ?>
    </footer>

    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
    <script src="../js/bootstrap/bootstrap.bundle.min.js"></script>
    <!--Script bootstrap-->
</body>


</html>
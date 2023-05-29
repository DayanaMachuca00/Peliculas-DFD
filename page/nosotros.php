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
    <link rel="stylesheet" href="../css/style3.css">
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
        <div class="container mt-5 bg-dark">
            <div class="uno">
                <h1 class="pt-5 text-center">Dino Furro Donas</h1>
            </div>
            <div class="row">

                <!--tamaños open-->
                <div class="col-12 h-100 my-5">
                    <p>
                        DFD es un sitio ideal para ver películas online. Nuestro sistema se preocupa por tener lo último del cine en calidad full HD.
                        Para ver una película puedes usar el buscador en la parte superior o seguir uno de los enlaces de genero o año de estreno en la parte izquierda del sitio, luego el enlace te llevará al reproductor donde solo tienes que dar click en el boton de play. Te invitamos a compartir este genial sitio con tus amigos y familiares. <br>
                        ¡Aquí empiezas!.</p>
                    </p>
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
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
                    <h3 class="text-center">Inicia Sesión</h3>
                    <form class="needs-validation" role="form" name="login" action="../php/login.php" method="post" novalidate>
                        <div class="form-group my-4">
                            <label for="username">Nombre de usuario o email</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Nombre de usuario" require>
                            <div class="invalid-feedback">
                                Please choose a username.
                            </div>
                        </div>
                        <div class="form-group my-4">
                            <label for="password">Contrase&ntilde;a</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Contrase&ntilde;a" require>
                        </div>

                        <button type="submit" class="btn btn-outline-info d-block mx-auto w-100">Acceder</button>
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
    <script src="../js/valida_login.js"></script>
    <!--Script bootstrap-->
</body>


</html>
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

<body class="bg-black">
    <header>
        <?php include "../php/navbar.php"; ?>
    </header>
    <main class="mt-4">
        <div class="container mt-5 pt-3">
            <div class="row bg-dark">

            <?php
                    include "../php/conexion.php";
                    $consulta = "SELECT username, fullname, email FROM user where id=" . $_SESSION["user_id"] . "";
                    $query = $con->query($consulta);
                    while ($r = $query->fetch_array()) {                        
                        $username = $r["username"];
                        $fullname = $r["fullname"];
                        $email = $r["email"];
                    }                    
                    ?>
                <section class="col-lg-6 col-12 text-white mx-auto d-block my-5">
                    <h4 class="text-center">Edita tu información</h4>
                    <form class="needs-validation" role="form" name="editar_usuario" action="../php/editar_usuario.php" method="post" novalidate>
                        <div class="form-group my-4">
                            <label for="username">Nombre de usuario</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Nombre de usuario" value="<?php echo $username?>">
                        </div>
                        <div class="form-group my-4">
                            <label for="fullname">Nombre Completo</label>
                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Nombre Completo" required value="<?php echo $fullname?>">
                        </div>
                        <div class="form-group my-4">
                            <label for="email">Correo Electronico</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Correo Electronico"  value="<?php echo $email?>">
                        </div>
                        <div class="form-group my-4">
                            <label for="password">Contrase&ntilde;a</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Contrase&ntilde;a" required>
                        </div>
                        <div class="form-group my-4">
                            <label for="confirm_password">Confirmar Contrase&ntilde;a</label>
                            <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirmar Contrase&ntilde;a" required>
                        </div>

                        <button type="submit" class="btn btn-outline-info d-block mx-auto w-100">Editar información</button>
                    </form>
                    <form  role="form" name="borrar_usuario" action="../php/borrar_usuario.php" method="post" novalidate>
                        <button type="submit" class="btn btn-outline-danger d-block mx-auto w-100">Eliminar Usuario</button>
                    </form>

            </div>
        </div>
        </div>


        </section>
        </div>
        </div>

    </main>
    <footer>
        <?php include "../php/footer.php"; ?>
    </footer>

    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
    <script src="../js/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="../js/valida_registro.js"></script>
    <script src="../js/validation.js"></script>
    <!--Script bootstrap-->
</body>


</html>
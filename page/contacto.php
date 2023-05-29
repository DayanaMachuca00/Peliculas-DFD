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

<body class="bg-black">
    <header>
        <?php include "../php/navbar.php";?>
    </header>
    <main class="mt-4">

        
        <div class="container mt-5">
            <!--formulario-->
            <?php
include "../php/conexion.php";
if (isset($_SESSION["user_id"])) {    
    $consulta = 'SELECT username, fullname, email FROM user where id = '. $_SESSION["user_id"];
    $query = $con->query($consulta);
    while ($r = $query->fetch_array()) {
        $username = $r["username"];        
        $fullname = $r["fullname"];
        $email = $r["email"];
    }    
}
?>
            <div class="row p-5 mt-5">
                <div class="col-lg-4 info mb-5">
                    <h2>Ayudanos a seguir Dinomejorando</h2> <br>
                    <p>Sugierenos peliculas, añade tus furrideas o dinocomentarios y asi mejoremos la dinoexperiencia de este dinofurrositio</p>
                </div>

                <div class="p-5 col-lg-8 shadow-lg p-3 mb-5 bg-dark text-white rounded">
                    <h2 class="mb-5">Envianos un mensaje</h2>
                    <form class="row g-3 needs-validation" action="/" novalidate>
                        <div class="col-md-6">
                            <label for="validationCustom01" class="form-label">Nombre completo</label>
                            <input type="text" class="form-control" id="validationCustom01" value="<?php if(isset($fullname)) echo $fullname?>" required placeholder="Nombre(s)" />
                            <div class="invalid-feedback"></div>
                        </div>                        
                        <div class="col-md-6">
                            <label for="validationCustomUsername" class="form-label">Email</label>
                            <div class="input-group has-validation">
                                <span class="input-group-text" id="inputGroupPrepend">@</span>
                                <input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required placeholder="Email" value="<?php if(isset($email)) echo $email?>"/>
                                <div class="invalid-feedback">Ingrese un email valido.</div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="validationCustom03" class="form-label">Teléfono</label>
                            <input type="text" class="form-control" id="validationCustom03" required placeholder="Teléfono" />
                            <div class="invalid-feedback">Ingrese un numero de telefono.</div>
                        </div>


                        <div class="mb-3">
                            <label for="validationTextarea" class="form-label">Mensaje</label>
                            <textarea class="form-control" id="validationTextarea" placeholder="Ingrese su mensaje" required></textarea>
                            <div class="invalid-feedback">
                                Es necesario ingresar un mensaje.
                            </div>
                        </div>



                        <div class="col-12 alinear">
                            <button class="btn btn-outline-info d-block w-100" type="submit">Enviar Mensaje</button>
                        </div>
                    </form>
                </div>
            </div>
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
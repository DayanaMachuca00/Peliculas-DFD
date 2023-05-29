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
    <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Macondo&display=swap" rel="stylesheet">

    <!--Link bootstrap-->
</head>

<body class="bg-black">
    <header>
        <?php include "./php/navbar.php"; ?>
    </header>
    <main class="mt-4">
        <div class="container mt-5 pt-3">
            <div class="row">
                <section class="col-lg-3 col-md-7 col-sm-8 col-12 bg-dark text-white p-0 m-0 py-3 mx-auto" id="mas-votadas">
                    <?php include "./php/mas-votadas.php"; ?>
                </section>
                <section class="col-lg-9 col-md-12 col-sm-10 col-12 bg-dark mx-auto" id="catalogo">
                <div class="row mb-5 my-2">
                <h4 class="mt-2 py-2"><span class="badge bg-violet d-block">Peliculas</span></h4>
                    <?php include "./php/peliculas.php"; ?>
                </div>                    
                </section>
            </div>
        </div>
    </main>
    <footer>
        <?php include "./php/footer.php"; ?>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <!--Script bootstrap-->
</body>


</html>
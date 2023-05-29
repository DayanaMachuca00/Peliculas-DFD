<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-navBar bg-gray-light">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center" href="/">
      <img src="../img/logo-navbar.png" alt="Dino Furro Donas" />
      <h4 class="ms-2">DFD</h4>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav drop ms-auto">
        <li class="nav-item m-auto">
          <a class="nav-link" aria-current="page" href="/">Inicio</a>
        </li>
        <li class="nav-item m-auto">
          <a class="nav-link" href="/page/nosotros.php">Sobre nosotros</a>
        </li>
        <li class="nav-item m-auto">
          <a class="nav-link" href="/page/contacto.php">Contacto</a>
        </li>
        <li class="nav-item m-auto">
          <a class="nav-link" href="/page/galeria.php">Galería</a>
        </li>
      </ul>
      <form class="d-flex" action="/">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="busqueda">
        <button class="btn btn-outline-light" type="submit">Buscar</button>
      </form>
      <ul class="navbar-nav drop">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <?php if (!isset($_SESSION["user_id"])) : ?>
              User
            <?php else : echo $_SESSION["username"] ?>

            <?php endif; ?>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <?php if (!isset($_SESSION["user_id"])) : ?>
              <li><a class="dropdown-item mx-auto" href="/page/login.php">Iniciar Sesión</a></li>
              <li><a class="dropdown-item mx-auto" href="/page/registro.php">Registro</a></li>
            <?php else : ?>
              <?php if ($_SESSION["rol"] == "admin") {
                echo '
                  <li><a class="dropdown-item mx-auto" href="/page/agregar_pelicula.php">Agregar Pelicula</a></li>
                  <li><a class="dropdown-item mx-auto" href="/php/logout.php">Cerrar Sesion</a></li>';
              } else {
                echo '
                  <li><a class="dropdown-item mx-auto" href="/page/editar_usuario.php">Editar información</a></li>
                  <li><a class="dropdown-item mx-auto" href="/php/logout.php">Cerrar Sesion</a></li>';
              }

              ?>
            <?php endif; ?>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
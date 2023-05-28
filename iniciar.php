<?php
session_start();
$error = 0;
if(isset($_GET['error'])){
    $error = $_GET['error'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detector de Perturbaciones en Tiempo Real</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="js/jquery-3.6.4.min.js"></script>
    <script src="js/funciones.js"></script> 
</head>
<body id="contenedor">
    <header id="encabezado" class="bg-dark">
        <section id="ImagenesTop">
          <picture id="Sep" class="bg-white">
            <img src="imagenes/seplogo.png" alt="SEP" id="Sep">      
          </picture>
          <picture id="Cona" class="bg-white">
              <img src="imagenes/conacyt.png" alt="CONACYT" id="Cona">      
          </picture>
          <picture id="Tecnm" class="bg-white">
              <img src="imagenes/TecNM_logo.png" alt="TecNM" id="Tecnm">
          </picture>
          <picture id="Itmorelia" class="bg-white">
              <img src="imagenes/Itmorelia.png" alt="IT Morelia" id="Itmorelia">      
          </picture>
          <picture id="Pcie" class="bg-white">
              <img src="imagenes/pcie.png" alt="PCIE" id="Pcie">      
          </picture>
        </section>
        <div id="menu" class="container bg-dark">
            <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
              <div class="col-md-3 mb-2 mb-md-0">
              <span id="Usuario" class="nav-link px-2 link-primary"><?=$Inicio;?></span>
              </div>
        
              <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0 fuenteMenu ">
                <li><a href="index.php" class="nav-link px-2 ">Inicio</a></li>
                <li><a href="perturbaciones.php" class="nav-link px-2">Perturbaciones</a></li>
                <li><a href="detector.php" class="nav-link px-2">Detector propuesto</a></li>
                <li><a href="acerca.php" class="nav-link px-2">Acerca de</a></li>
              </ul>
        
              

<?php
    if(isset($_SESSION['usuario'])){
    $Inicio = $_SESSION['usuario'];
    $sesion = "Cerrar sesión";
        if($_SESSION['administrador']==1){
            $administrador = "control.php";
            $registrarse = "Control";
        }
        else{
            $administrador = "registrarse.php";
            $registrarse = "Registrarse";
        }
?>
        <div class="col-md-3 text-end">
                <a href="iniciar.php" class="btn btn-outline-primary me-2">Cerrar Sesión</a>
                <a href="<?=$administrador;?>" class="btn btn-primary"><?=$registrarse?></a>
              </div>
            </header>
          </div>
        <fieldset id="titulo">
            <h1 class="centrar link-primary">Ya has iniciado sesión como <?=$Inicio?></h1>
        </fieldset>   
    </header>
<main id="contenido" class="bg-dark text-white">
    <div class="centrar">
      <a href="cerrar.php" class="w-100 btn btn-lg btn-danger">Cerrar Sesión</a>                      
    </div>
</main>
<?php
    }
    else{
        $Inicio = "No iniciado";
        $administrador = "registrarse.php";
        $registrarse = "Registrarse";
?>
<div class="col-md-3 text-end">
                <a href="iniciar.php" class="btn btn-outline-primary me-2">Iniciar Sesión</a>
                <a href="<?=$administrador;?>" class="btn btn-primary"><?=$registrarse?></a>
              </div>
            </header>
          </div>
        <fieldset id="titulo">
            <h1 class="centrar link-primary">Iniciar Sesión</h1>
        </fieldset>   
    </header>
    
    <main id="contenido" class="bg-dark text-white">
        <form  action="login.php" name="formulario2">
          <div class="row g-2">
              <div class="col-md-7 col-lg-8">
                  <div class="row g-3">
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">
                      <label for="correoI" class="form-label">Correo electrónico: (Admin: jonatanali1925@gmail.com)<span id="comproEmail" ></span></label>
                      <input type="email" name="correoI" id="correoI" class="form-control" placeholder="usuario@ejemplo.com">
                    </div>
        
                    <div class="col-sm-6">
                    </div>

                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">

                    </div>

                    <div class="col-sm-6">
                      <label for="contraI" class="form-label">Contraseña:  (Jonatan1925.)<span id="comproContra"></span></label>
                      <input type="password" name="contraI" class="form-control" id="contraI">
                    </div>
                    <div class="col-sm-6">

                      </div>
                      <div class="col-sm-6">
                        <div class="row g-3">
                            <div class="col-sm-4">
                                <input type="submit" class="w-100 btn btn-lg btn-primary" value="Iniciar sesión" id="Iniciar">
                            </div>
                            <div class="col-sm-4">
                                <input type="reset" class="w-100 btn btn-lg btn-secondary" value="Limpiar" id="Limpiar">
                            </div>
                        </div>

                    </div>

                  </div>
              </div>
          </div>
        </form>
        </main>
<?php
    }
    if($error == 1){
?>
      <div class="bg-dark text-danger centrar">
      El usuario y la contraseña no coinciden, intente de nuevo.
      </div>

<?php
    }
?>


<footer id="pie" class="bg-dark text-white">
    <fieldset class="centrar" id="bottom">
        <br>
        <a href="https://www.morelia.tecnm.mx" class="nav-link px-2 link-primary">Tecnológico Nacional de México Campus Morelia</a>
        <br>
        <a href="http://sagitario.itmorelia.edu.mx/pelectron/" class="nav-link px-2 link-primary">Maestría en Ciencias en Ingeniería Electrónica</a>
        <!-- Agregar hora y fecha -->
    </fieldset>
</footer> 
</body>
</html>
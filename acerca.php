<?php
    session_start();
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
    }
    else{
        $Inicio = "No has iniciado sesión";
        $sesion = "Iniciar sesión";
        $administrador = "registrarse.php";
        $registrarse = "Registrarse";
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
                <li><a href="acerca.php" class="nav-link px-2 link-secondary">Acerca de</a></li>
              </ul>
        
              <div class="col-md-3 text-end">
                <a href="iniciar.php" class="btn btn-outline-primary me-2"><?=$sesion?></a>
                <a href="<?=$administrador;?>" class="btn btn-primary"><?=$registrarse?></a>
              </div>
            </header>
          </div>
        <fieldset id="titulo">
            <h1 class="centrar link-primary">Acerca de</h1>
        </fieldset>   
    </header>
    
    <main id="contenido" class="bg-dark text-white">
        <fieldset id="institucion">
            <article id="autores">
                <h2 class="centrar">Información de contacto</h2>
                <ul id="inf_autor">
                    <li>
                        <strong>Autor: </strong> Jonatan Ali Medina Molina
                    </li>
                    <li>
                        <strong>Correo institucional: </strong> <a href="m17121124@morelia.tecnm.mx" class="px-2 link-light">m17121124@morelia.tecnm.mx</a>
                    </li>
                    <li>
                        <strong>Correo personal: </strong> <a href="jonatanali1925@gmail.com" class="px-2 link-light">jonatanali1925@gmail.com</a>
                    </li>
                    <li>
                        <strong>LinkedIn: </strong> <a href="www.linkedin.com/in/jonatan-ali-medina-molina-275288209" class="px-2 link-light">Jonatan Ali Medina Molina</a>
                    </li>
                </ul>
                <ul id="inf_director">
                    <li><strong>Director de Tesis: </strong> Enrique Reyes Archundia</li>
                    <li><strong>Correo institucional: </strong> <a href="enrique.ra@morelia.tecnm.mx" class="px-2 link-light">enrique.ra@morelia.tecnm.mx</a></li>
                </ul>   
            </article>  
            <h2 class="centrar">Ubicación de la Institución</h2>
            El proyecto fue realizado para obtener el grado de Maestría en Ciencias en Ingeniería Electrónica
            en el Tecnológico Nacional de México Campus Morelia, Avenida Tecnológico #1500, col. Santiaguito. 
            c.P. 58120, Morelia, Michoacán, México.
            <div id="mapa">
            </div>       
        </fieldset>
    </main>
<footer id="pie" class="bg-dark text-white">
    <fieldset class="centrar" id="bottom">
        
        <a href="https://www.morelia.tecnm.mx" class="nav-link px-2 link-primary">Tecnológico Nacional de México Campus Morelia</a>
        <br>
        <a href="http://sagitario.itmorelia.edu.mx/pelectron/" class="nav-link px-2 link-primary">Maestría en Ciencias en Ingeniería Electrónica</a>
        <!-- Agregar hora y fecha -->
    </fieldset>
</footer> 
</body>
</html>
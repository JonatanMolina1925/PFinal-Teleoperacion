<?php
    session_start();
    require("conexion.php");
    if(isset($_SESSION['usuario']) && $_SESSION['administrador']== 1){
    $Inicio = $_SESSION['usuario'];
    $sesion = "Cerrar sesión";
    $administrador = "control.php";
    $registrarse = "Control";
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
            <h1 class="centrar link-primary">Administración de usuarios</h1>
        </fieldset>   
    </header>
    
    <main id="contenido" class="bg-dark text-white">
<?php
    $conn = new mysqli($host, $user, $passwd, $db);
    if ($conn->connect_error){
        die("Error al conectarse a la base de datos".$conn->connect_error);
    }else{
        $sql = "SELECT * FROM users";
        $resultado = $conn->query($sql);
        $usuarios = $resultado->num_rows;
        if($usuarios>0){
?>
    <div class="bg-dark text-white">
        Hay <?=$usuarios?> usuarios.
        <table class="table table-dark">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Fecha de Nacimiento</th>
                    <th>Correo</th>
                    <th>Grado Académico</th>
                    <th>Institución</th>
                    <th>Contraseña</th>
                    <th>Administrador</th>
                    <th>Eliminar</th>
                    <th>Actualizar</th>
                </tr>
            </thead>
            <tbody>
            <?php
        while($fila = $resultado->fetch_assoc()){
    ?>
                <tr>
                    <td><?=$fila['nombre'];?></td>
                    <td><?=$fila['apellidos'];?></td>
                    <td><?=$fila['fecha'];?></td>
                    <td><?=$fila['correo'];?></td>
                    <td><?=$fila['grado'];?></td>
                    <td><?=$fila['institucion'];?></td>
                    <td><?=$fila['contrasena'];?></td>
                    <td><?=$fila['administrador'];?></td>
                    <td><a href="eliminar.php?el=<?=$fila['id'];?>">Eliminar</a></td>
                    <td><a href="formularioA.php?ac=<?=$fila['id'];?>">Actualizar</a></td>
                </tr>
    <?php
        }
    ?>
    </tbody>
        </table>
    </div>
<?php

        }

        else{
?>
    <div class="bg-dark text-white">
        No hay usuarios registrados.
    </div>
<?php
        }
    }
    $conn->close();
?>
        <div class="centrar">
            <a href="registrarse.php?ad=1" class="w-100 btn btn-lg btn-primary">Agregar usuario como administrador</a>                      
        </div>
        <div class="centrar">
            <a href="registrarse.php" class="w-100 btn btn-lg btn-secondary">Agregar usuario</a>                      
        </div>

<?php
if(isset($_GET['el'])){
    if($_GET['el'] == 1){
?>
        <div class="bg-dark text-danger">
          Usuario eliminado.
        </div>
<?php
    }
    if($_GET['el'] == 0){
        ?>
        <div class="bg-dark text-success">
          No se puedo eliminar el usuario.
        </div>
        <?php
    }
}        
?>

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

  <?php
    }
    else{
        +header("Location: index.php");
    }
?>
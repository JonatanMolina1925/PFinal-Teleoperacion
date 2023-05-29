<?php
    session_start();
    if(isset($_SESSION['usuario']) && $_SESSION['administrador']==1 && isset($_GET['ac'])){
    $id = $_GET['ac'];
    $_SESSION['ac'] = $id; 
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
                <li><a href="acerca.php" class="nav-link px-2">Acerca de</a></li>
              </ul>
        
              <div class="col-md-3 text-end">
                <a href="iniciar.php" class="btn btn-outline-primary me-2"><?=$sesion?></a>
                <a href="<?=$administrador;?>" class="btn btn-primary"><?=$registrarse?></a>
              </div>
            </header>
          </div>
        <fieldset id="titulo">
            <h1 class="centrar link-primary">Actualizar usuario</h1>
        </fieldset>   
    </header>
<?php
    require("conexion.php");
    $conn = new mysqli($host, $user, $passwd, $db);
    if ($conn->connect_error){
        die("Error al conectarse a la base de datos".$conn->connect_error);
    }else{
        $sql = "SELECT * FROM users WHERE id = '$id'";
        $resultado = $conn->query($sql);
        $usuarios = $resultado->num_rows;
        $fila = $resultado->fetch_assoc();
    }
    
?>
    <main id="contenido" class="bg-dark text-white">
        <form  action="actualizar.php" name="formulario1">
          <div class="row g-5">
              <div class="col-md-5 col-lg-4 order-md-last">
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <input type="button" class="btn btn-primary" value="Actualizar" id="enviar" onclick="enviarFormulario()">
                  <input type="reset" class="btn btn-secondary" value="Limpiar" id="Limpiar">
                </div>

              <div class="col-md-7 col-lg-8">
                  <div class="row g-3">
                    <div class="col-sm-6">
                      <label for="nombre" class="form-label">Nombre(s) <span id="ComprobarNombre"></span></label>
                      <input type="text" name="nombre" id="nombre" class="form-control" value="<?=$fila['nombre']?>" readonly>
                    </div>

                    <div class="col-sm-6">
                      <label for="apellidos" class="form-label">Apellidos(s) <span id="ComprobarApellido" ></span></label>
                      <input type="text" name="apellidos" id="apellidos" class="form-control" value="<?=$fila['apellidos']?>" readonly>
                    </div>
        
                    <div class="col-sm-6">
                      <label for="Fecha" class="form-label">Fecha de nacimiento: <span id="ComprobarFecha"></span></label>
                      <input type="date" name="Fecha" class="form-control" id="Fecha" value="<?=$fila['fecha']?>">
                    </div>

                    <div class="col-sm-6">
                      <label for="email" class="form-label">Correo electrónico <span id="ComprobarEmail"></span></label>
                      <input type="email" name="email" class="form-control" id="email" value="<?=$fila['correo']?>" readonly>
                    </div>
                    <div class="col-sm-6">
                      <label for="grado" class="form-label">Grado académico</label>
                      <select class="form-select" id="grado"  name="grado" required>
                        <optgroup>
                          <option value="Primaria">Primaria</option>
                          <option value="Secundaria">Secundaria</option>
                          <option value="Bachillerato">Bachillerato</option>
                          <option value="Licenciatura">Licenciatura</option>
                          <option value="Posgrado" selected>Posgrado</option>
                      </optgroup>
                      </select>
                    </div>

                    <div class="col-sm-6">
                      <label for="institucion" class="form-label">Institución donde obtuvo su grado académico: <span id="ComprobarInstitucion" ></span></label>
                      <input type="text" name="institucion" class="form-control" id="institucion" value="<?=$fila['institucion']?>" >
                    </div>
                    <div class="col-sm-6">
                      <label for="contra1" class="form-label">Contraseña <span id="ComprobarContra" ></span></label>
                      <input type="password" name="contra1" class="form-control" id="contra1">
                    </div>

                    <div class="col-sm-6">
                      <label for="contra2" class="form-label">Confirma la contraseña <span id="ComprobarContra2"></span></label>
                      <input type="password" name="contra2" class="form-control" id="contra2">
                    </div>
                  </div>
              </div>
          </div>
        </form>
        </main>
<?php
    if(isset($_SESSION['e']) && $_SESSION['e'] == 1 && $id == 0){
        $_SESSION['e'] = -1;
?>
        <div class="bg-dark text-danger">
          No se puedo actualizar el usuario.
        </div>
<?php
    }
    if(isset($_SESSION['e']) && $_SESSION['e'] == 0 && $id > 0){
        $_SESSION['e'] = -1;
?>
        <div class="bg-dark text-success">
          Usuario actualizado exitósamente. 
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

<?php
    $conn->close();
}
    
    else{
        header("Location: index.php");
    }

?>
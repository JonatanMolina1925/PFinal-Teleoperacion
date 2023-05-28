<?php
    session_start();
    //REQUEST contiene a GET y POST
    $correo = $_REQUEST['correoI'];
    $contrasena = $_REQUEST['contraI'];
    $contrasena = md5($contrasena);
    require("conexion.php")
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
    <p id="correoI"><?=$correo?></p>
    <?php
        //echo "<h1>$contra</h1>"; 
        $conn = new mysqli($host, $user, $passwd, $db);
        if ($conn->connect_error){
            die("Error al conectarse a la base de datos".$conn->connect_error);
        }
        else{  
    //Revisión si ya hay algún usuario con el correo 
            $sql = "SELECT * FROM users WHERE correo='$correo'";
            //echo "Sentencia ".$sql;
            $resultado = $conn->query($sql);
            $fila = $resultado->fetch_assoc();
                //echo "Hola". $fila['contrasena'];
            if($contrasena == $fila['contrasena']){
                //echo "Usuario y contraseña correctos";
                $_SESSION['usuario']=$fila['correo'];
                $_SESSION['administrador']=$fila['administrador'];
                header("Location: index.php");
            } 
            else{
                header("Location: iniciar.php?error=1");
            }
        }
        $conn->close();
    ?>
</body>
</html>



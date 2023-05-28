<?php
    //REQUEST contiene a GET y POST
    session_start();
    $nombre = $_REQUEST['nombre'];
    $apellidos = $_REQUEST['apellidos'];
    $fecha = $_REQUEST['Fecha'];
    $correo = $_REQUEST['email'];
    $grado = $_REQUEST['grado'];
    $institucion = $_REQUEST['institucion'];
    $contrasena = $_REQUEST['contra1'];
    $contrasena = md5($contrasena);

    if(isset($_SESSION['usuario']) && $_SESSION['administrador']==1 && isset($_SESSION['superUser']) && $_SESSION['superUser'] == 1){
        $administrador = 1;
    }
    else{
        $administrador = 0;
    }
    //echo "<h1>$usuario</h1>";

    //include("conexion.php");
    require("conexion.php");
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
</head>
<body>
    <!-- <h1>Bienvenido <?=$nombre?></h1> -->
    <?php
        //echo "<h1>$contra</h1>"; 
        $conn = new mysqli($host, $user, $passwd, $db);
        if ($conn->connect_error){
            die("Error al conectarse a la base de datos".$conn->connect_error);
        }
        else{
    ?>
            <p>Conectado con éxito a la base de datos</p>
    <?php     
    //Revisión si ya hay algún usuario con el correo 
            $sql = "SELECT correo FROM users WHERE correo='$correo'";
            $resultado = $conn->query($sql);
            $Nusers = $resultado->num_rows;
            if($Nusers == 0){
                $sql = "INSERT INTO users (nombre, apellidos, fecha, correo, grado, contrasena, institucion, administrador) VALUES('$nombre', '$apellidos', '$fecha', '$correo', '$grado', '$contrasena', '$institucion', '$administrador')";
                // echo "Sentencia: ".$sql;
                if ($conn->query($sql) === TRUE) {
                    header("Location: registrarse.php?error=0");
                } 
            }
            else{
                header("Location: registrarse.php?error=1");
            }
        }
        $conn->close();
    ?>
</body>
</html>
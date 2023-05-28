<?php
    session_start();
    if(isset($_SESSION['usuario']) && $_SESSION['administrador']==1 && isset($_SESSION['ac'])){
        //REQUEST contiene a GET y POST
        $id = $_SESSION['ac'];
        $fecha = $_REQUEST['Fecha'];
        $grado = $_REQUEST['grado'];
        $institucion = $_REQUEST['institucion'];
        $contrasena = $_REQUEST['contra1'];
        $contrasena = md5($contrasena);

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
    $sql = "SELECT * FROM users WHERE id = '$id'";
    $resultado = $conn->query($sql);
    $fila = $resultado->fetch_assoc();
    $nombre = $fila['nombre'];
    $apellidos = $fila['apellidos'];
    $correo = $fila['correo'];
    $id =$fila['id'];

    $sql = "UPDATE users SET nombre = '$nombre', apellidos = '$apellidos', fecha = '$fecha', grado = '$grado', contrasena = '$contrasena', institucion = '$institucion' WHERE id = '$id'";
    $resultado = $conn->query($sql);
    if ($conn->query($sql) === TRUE) {
         echo "Usuario actualizado";
        $_SESSION['e'] = 0;
        echo "Location: formularioA.php?ac=$id";
        header("Location: formularioA.php?ac=$id");
    } 
    else{
         echo "Usuario no actualizado";
        $_SESSION['e'] = 1;
        echo "Location: formularioA.php?ac='$id'";
        header("Location: formularioA.php?ac='$id'");
    }
        }
        $conn->close();
    ?>
</body>
</html>

<?php
    }
    else{
        // echo $_SESSION['usuario'];
        // echo $_SESSION['administrador'];
        // echo $_GET['ac'];
        // echo "No tienes permisos";
        header("Location: index.php");
    }
?>
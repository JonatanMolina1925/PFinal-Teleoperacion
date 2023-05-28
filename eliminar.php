<?php
    session_start();
    if(isset($_SESSION['usuario']) && $_SESSION['administrador']==1 && isset($_GET['el'])){
        //REQUEST contiene a GET y POST
        $id = $_GET['el'];
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
    $sql = "DELETE FROM users WHERE id = '$id'";
    $resultado = $conn->query($sql);
    if ($conn->query($sql) === TRUE) {
         echo "Usuario eliminado";
        echo "Location: control.php";
        header("Location: control.php?el=1");
    } 
    else{
         echo "Usuario no eliminado";
        echo "Location: control.php";
        header("Location: control.php?el=0");
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
<?php
    session_start();
    if(isset($_SESSION['usuario'])){
    $Inicio = $_SESSION['usuario'];
    $sesion = "Cerrar sesión";
    $grafica = 1;
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
        $grafica = 0;
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
    <script src="js/plotly-2.20.0.min.js"></script>
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
                <li><a href="detector.php" class="nav-link px-2 link-secondary">Detector propuesto</a></li>
                <li><a href="acerca.php" class="nav-link px-2">Acerca de</a></li>
              </ul>
        
              <div class="col-md-3 text-end">
                <a href="iniciar.php" class="btn btn-outline-primary me-2"><?=$sesion?></a>
                <a href="<?=$administrador;?>" class="btn btn-primary"><?=$registrarse?></a>
              </div>
            </header>
          </div>
        <fieldset id="titulo">
            <h1 class="centrar link-primary">Solución propuesta para clasificar perturbaciones en tiempo real</h1>
        </fieldset>   
    </header>
   
    <main id="contenido" class="bg-dark text-white">
        <fieldset id="Introduccion">
            <h2 class="centrar">Introduccón</h2>
            Con el incremento de la producción distribuida de la energía eléctrica, también se ha aumentado
            la cantidad de perturbaciones que éste tipo de energía producen. Energías como la eólica o solar pueden 
            producir perturbaciones por su producción variable de acuerdo a ciertas condiciones como el clima, estación del año, entre 
            otras. Es importante detectar las perturbaciones en tiempo real para poder detectarlas y evitar que se introduzcan 
            a la red eléctrica. 
            <br>
            A pesar de que hay una gran variedad de métodos para detectar perturbaciones, muy pocos de ellos han sido desarrollados
            para dispositivos que cuenten con pocos recursos y que además sean capaces de detectarlas en tiempo real. El principal reto
            es seleccionar un método de extracción de características que se pueda ejecutar en muy poco tiempo y que no requiera
            de mucha capacidad de cómputo. El clasificador también puede contribuir en mejorar el desempeño del método, ya que, 
            dependiende de las características extraídas, algunos clasificadores pueden ser mejores o peores. 
            <br>
            Los métodos a utilizar serán la Transformada S y la Transformada Discreta de Wavelet, los cuales se implementarán en
            una BeagleBone AI-64 y con un clasificador ...
        </fieldset>
        <fieldset id="ExtCar">
            <h2 class="centrar">Método de extracción de características</h2>

        </fieldset>
        <fieldset id="BBIA"> 
            <h2 class="centrar">BeagleBone AI-64</h2>
            <q><cite>BeagleBone AI-64 tiene el sistema en chip TDA4VM de Texas Instruments con doble Arm Cortex-A72 de 64 bits, C7xDSP y 
                aceleradores de aprendizaje profundo, visión y multimedia, con un procesador de 2,0 GHz. También tiene cabezales de expansión 
                compatibles con muchas placas complementarias BeagleBone, conector M.2 E-key con PCIe, USB y SDIO para Wi-Fi/Bluetooth y expansión, 
                1 botón de arranque, 1 botón de reinicio, 1 botón de encendido, 1 LED de indicación de encendido y 5 LED de usuario</cite></q> [1].
                <br>
                <figure class="centrar"><img src="imagenes/BBIA.png" id="BBAI" alt="BeagleBone AI-64" width="800"></figure>
                
                <figcaption id="BBAI" class="centrar">BeagleBone AI-64</figcaption>
                <br>
                Cuenta con las siguientes características [1]:
                <ul>
                <li>4 GB de RAM LPDDR4, 16 GB de almacenamiento flash eMMC en placa</li>
                <li>Potencia de entrada de 5V DC</li>
                <li>Interfaz USB 3.0 Tipo-C para la entrada de energía y datos</li>
                <li>Dos puertos USB tipo A de alta velocidad (5 Gbps)</li>
                <li>Gigabit Ethernet, puerto de minipantalla, cabezal de microcontrolador de 16 pines</li>
                <li>Conectores duales de cámara CSI de 4 carriles, conector de pantalla DSI de 4 carriles</li>
                <li>Ranura Micro-SD, disipador de calor montado</li>
                <li>Puerto de serie del dominio Wake-up</li>
                <li>Puerto serie de dominio principal, conector JTAG de 10 pines para depuración</li>
                <li>Temperatura de trabajo de 0°C a 70°C y certificación CE, FCC</li>
            </ul>


        </fieldset>
        <fieldset id="Clasificador">
            <h2 class="centrar">Clasificador</h2>
            
        </fieldset>
        <fieldset id="Resultados">
            <h2 class="centrar">Resultados</h2>
        <?php
        if($grafica == 0){
        ?>
            <p>Inicia sesión para ver la señal de la última perturbación detectada.</p>
         <?php
        }else{
            require("conexion.php");
            $conn = new mysqli($host, $user, $passwd, $db);
            if ($conn->connect_error){
                die("Error al conectarse a la base de datos".$conn->connect_error);
            }else{
                $sql= "SELECT id,valor FROM datos";
                $resultado = $conn->query($sql);
                $valoresX = array();
                $valoresY = array();

                while($ver=$resultado->fetch_row()){
                    $valoresX[]=$ver[0];
                    $valoresY[]=$ver[1];
                }
                $datosX=json_encode($valoresX);
                $datosY=json_encode($valoresY);
            }
        ?>
        <p>Gráfica de la última perturbación detectada.</p>
        <br>
        <div id="GraficaLineal"></div>
        <br>
        <script type="text/javascript">
            function crearCadenaLineal(json){
                var parsed = JSON.parse(json);
                var arr = [];
                for(var x in parsed){
                    arr.push(parsed[x]);
                }
                return arr;
            }
        </script>
        <script type="text/javascript">
            datosX=crearCadenaLineal('<?php echo $datosX ?>');
            datosY=crearCadenaLineal('<?php echo $datosY ?>');

            var trazo = {
                x: datosX,
                y: datosY,
                type: 'scatter'
            };
            var data = [trazo];
            Plotly.newPlot('GraficaLineal', data);
        </script>
        <?php  
        }
         ?>
        </fieldset>
                
        <fieldset id="referencias">
            <h2 class="centrar">Rerefencias</h2>
            <ol>
                <li>Farnell, <q><cite>BeagleBone AI-64, TDA4VM, ARM Cortex-A72, 4GB RAM, 16GB eMMC, USB 3.0 Tipo-C, M.2 E-key</cite></q>. [En línea]. 
                    Disponible: <a href="https://es.farnell.com/beagleboard/beaglebone-ai-64/beagleboard-arm-cortex-a72/dp/3923739#:~:text=BeagleBone®%20AI-64%20tiene,complementarias%20BeagleBone®%2C%20conector%20M." class="link-light">
                        https://es.farnell.com/beagleboard/beaglebone-ai-64/beagleboard-arm-cortex-a72/dp/3923739#:~:text=BeagleBone®%20AI-64%20tiene,complementarias%20BeagleBone®%2C%20conector%20M.</a>
                        [Accedido: 9 de marzo 2023].
                
                </li>
                <li>A. Eigeles y J. McNeill, <q><cite>Electric Power Quality</cite></q>, Annual Reviews, vol. 22, pp. 263-303,
                    1997.</li>
                <li>V. Mercado, J. B. Peña y L. Pacheco, <q><cite>Calidad de energía eléctrica bajo la perspectiva de los
                    sistemas de puesta a tierra</cite></q>, Ciencia e ingeniería, vol. 38, no. 2, pp. 167-182, 2017.</li>
                <li>S. Ramírez y E. A. Cano, <q><cite>Calidad de servicio de energía eléctrica</cite></q>, 1ª ed. Centro de
                    Publicaciones Universidad Nacional de Colombia, 2006.</li>
                <li>Z. C. Flores, <q><cite>Factores que afectan la calidad de la energía y su solución</cite></q>, trabajo de fin de
                    grado, Instituto Politécnico Nacional, CDMX, México, 2008.</li>
                <li>M. A. Ángel y G. Ordóñez, <q><cite>Calidad De La Energía Eléctrica: Diseño Y Construcción De Un
                    Prototipo Como Alternativa Para La Monitorización De Interrupciones Y Caídas De Tensión</cite></q>,
                    Revista UIS Ingenierías, vol. 4, no. 2, pp. 75-83, julio-diciembre 2005.</li>
                <li>Esopo, <q><cite>Características ondas</cite></q>. [En línea]. Disponible: <a href="https://iie.fing.edu.uy/proyectos/esopo/caracteristicas-ondas" class="link-light">https://iie.fing.edu.uy/proyectos/esopo/caracteristicas-ondas/.</a>  
                    [Accedido: 24 de febrero 2022].</li>
            </ol>
            
        </fieldset>
    </main>
<footer id="pie" class="bg-dark text-white">
    <fieldset class="centrar" >
        
        <a href="https://www.morelia.tecnm.mx" class="nav-link px-2 link-primary">Tecnológico Nacional de México Campus Morelia</a>
        <br>
        <a href="http://sagitario.itmorelia.edu.mx/pelectron/" class="nav-link px-2 link-primary">Maestría en Ciencias en Ingeniería Electrónica</a>
        <!-- Agregar hora y fecha -->
    </fieldset>
</footer> 
</body>
</html>
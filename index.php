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
                <li><a href="index.php" class="nav-link px-2 link-secondary">Inicio</a></li>
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
            <h1 class="centrar link-primary">Calidad de la energía</h1>
        </fieldset>   
    </header>
    
    <main id="contenido" class="bg-dark text-white">
        <fieldset>
            <article id="definicion">
                La calidad de la energía es un problema que comenzó en el siglo XIX con las perturbaciones que se generaban
                por motores, hoy en día, la incorporación de la generación distribuida, las cargas no lineales usadas por los 
                usuarios y los cambios en la industria de la electricidad han hecho que sea un problema prioritario a 
                resolver. La mayoría de los dispositivos electrónicos están diseñados para poder trabajar sin
                problemas, aunque la electricidad con la que se alimente tenga ciertas perturbaciones, sin embargo,
                existen dispositivos más sensibles que dependen de la señal de la electricidad con la que se alimenta
                para poder trabajar adecuadamente, por ello es importante su estudio, ya que, además de poder dañar
                equipos electrónicos, también puede causar fallas en el sistema eléctrico. 
                <br>
                <br>
                
                Existen una gran cantidad de definiciones de caldiad de la energía, sin embargo, se puede describir como: 
                <ul>
                    <li><q><cite>La magnitud en la que la utilización de la energía perjudica el funcionamiento de un
                        dispositivo eléctrico</cite></q> [1].</li>
                    <li><q><cite> Es cuando la energía eléctrica es suministrada a los equipos y dispositivos con las
                        características y condiciones adecuadas que les permita mantener su continuidad sin que se
                        afecte su desempeño ni provoque fallas a sus componentes</cite></q> [2].</li>
                    <li><q><cite>Es la precisión de los atributos eléctricos para el funcionamiento óptimo del sistema de
                        potencia</cite></q> [3].</li>
                    <li><q><cite>Ausencia de interrupciones, sobre tensiones y deformaciones producidas por armónicas en
                        la red y variaciones de voltaje RMS suministrado a usuario</cite></q> [4].</li>
                </ul>
                La calidad del servicio de la energía eléctrica se mide mediante tres parámetros [5]:
                <ul>
                    <li>Continuidad del servicio: se evalúa con índices que están relacionados con la duración y el número
                        de las interrupciones del servicio en un período de tiempo.</li>
                    <li>Calidad de la energía: se valora a partir de parámetros como la amplitud, la frecuencia, la 
                        forma de onda y la simetría de las señales de tensión y de corriente.</li>
                    <li>Atención comercial: tiene que ver con todo lo relacionado con la capacidad
                        de atención al cliente y con el suministro de información a los usuarios de energía eléctrica.</li>
                </ul>
            </article>
            <article id="caracteristicas">
                <h2 class="centrar">Características de la forma de onda</h2>
                La forma de onda senoidal que lleva a los tomacorrientes de los hogares tiene las siguientes características [6]:
                <ul>
                    <li>Amplitud: Se puede definir como la distancia vertical entre una cresta y el punto de equilibrio
                        de la señal medida, también se puede obtener la amplitud de pico a pico que es la medida de
                        la distancia entre una cresta y un valle. </li>
                    <li>Frecuencia: Es el número de repeticiones que tiene un evento en un periodo de tiempo, en las
                        señales eléctricas sería la cantidad de ciclos por segundo (Hertz). </li>
                    <li>Forma de onda: Para la señal eléctrica, la forma de onda es una señal senoidal. </li>
                    <li>Simetría: En los sistemas trifásicos, la simetría se refiere a que los desfases son iguales.</li>
                </ul>
                En la figura se muestran las caracteristicas descritas anteriormente. 
                <figure id="caracteristicas" class="centrar"><img src="imagenes/caracteristicas.png" alt="Forma de onda con sus caracteristicas" width="400" height="400" class="imagenes">
                </figure>
                <figcaption id="caracteristicas" class="centrar">Características de forma de onda senoidal</figcaption>
            </article>
        </fieldset>
        <fieldset id="referencias">
            <h2 class="centrar">Rerefencias</h2>
            <ol>
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
    <fieldset class="centrar" id="bottom">
        
        <a href="https://www.morelia.tecnm.mx" class="nav-link px-2 link-primary">Tecnológico Nacional de México Campus Morelia</a>
        <br>
        <a href="http://sagitario.itmorelia.edu.mx/pelectron/" class="nav-link px-2 link-primary">Maestría en Ciencias en Ingeniería Electrónica</a>
        <!-- Agregar hora y fecha -->
    </fieldset>
</footer> 
</body>
</html>
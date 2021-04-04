<!DOCTYPE html>
<html lang="en">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>Dialtica registro de pacientes</title>
  <link rel="stylesheet" type="text/css" href="librerias/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="librerias/alertifyjs/css/alertify.css">
  <link rel="stylesheet" type="text/css" href="librerias/alertifyjs/css/themes/default.css">
  <link rel="stylesheet" type="text/css" href="librerias/select2/css/select2.css">
  <link rel="stylesheet" type="text/css" href="estilos/estilos.css">
  <script src="librerias/jquery-3.2.1.min.js"></script>
  <script src="estilos/estilos.css"></script>
  <script src="librerias/bootstrap/js/bootstrap.js"></script>
  <script src="librerias/alertifyjs/alertify.js"></script>
  <script src="librerias/select2/js/select2.js"></script>


</head>

<body>
  <div id="tablalistada" class="container">

    <!--Es aqui donde maqueto la tabla para que se encuentre 
                            en el centro con la clase container y dentro de esta meto la tabla de php-->
    <div id="tabla">

    </div>
  </div>

</body>

</html>
<script type="text/javascript">
  //esta es la estructura basica de un javascript
  $(document).ready(function() {
    $('#tabla').load('php/recuperardatos.php') // En el div con el id=tabla cargamos la tabla que creamos en la carpeta componentes que se llama tabla.php
  })

  function actualizar() {
    location.reload(true);
  }
  
  
  //Función para actualizar cada 5 segundos(5000 milisegundos)
  setInterval("actualizar()", 50000);
</script>
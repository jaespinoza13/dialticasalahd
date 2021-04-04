<!DOCTYPE html>

<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Dialtica registro de pacientes</title>
    <link rel="stylesheet" type="text/css" href="librerias/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="librerias/alertifyjs/css/alertify.css">
    <link rel="stylesheet" type="text/css" href="librerias/alertifyjs/css/themes/default.css">

    <link rel="stylesheet" type="text/css" href="librerias/bootstrap/css/style.css">
    <script src="librerias/bootstrap/js/bootstrap.js"></script>
    <script src="librerias/alertifyjs/alertify.js"></script>


</head>

<div id="divfondo" class="row">
    <div class="col-sm-12">


        <h1 class="titulo">Registro de los pacientes</h1>



        <table border-radius=5px; class="table" id="tabla2">


            <tr id="titulotabla">

                <th>
                    <h3 style="text-align:center; color: #20A3C8;"><strong>Nombres</strong></h3>
                </th>
                <th>
                    <h3 style=" text-align:center;color: #20A3C8;"><strong>Cama asignada</strong></h3>
                </th>
                <th>
                    <h3 style="text-align:center;color: #20A3C8;"><strong>Orden de llegada</strong></h3>
                </th>



            </tr>
            <?php

            require_once "conexion.php";
            $conexion = conexion();
            $sql = "SELECT * FROM registropacientes ORDER BY orden_llegada ";
            $result = mysqli_query($conexion, $sql);
            while ($ver = mysqli_fetch_row($result)) {


            ?>



                <tr class="tablacontenido">

                    <td name="cama">

                        <h4 style="font-family:sans-serif ; font-style: italic; "><strong> <?php echo $ver[1] ?></strong></h4>

                    </td>

                    <td name="orden">

                        <h4 style="font-family:sans-serif ; font-style: italic; "><strong> <?php echo $ver[2] ?></strong></h4>

                    <td name="seleccion">
                        <h4 style="font-family:sans-serif ; font-style: italic; "><strong> <?php echo $ver[3] ?></strong></h4>

                    </td>

                </tr>
            <?php
            }
            ?>

        </table>


    </div>

    </form>
</div>
<div>

</div>

</html>

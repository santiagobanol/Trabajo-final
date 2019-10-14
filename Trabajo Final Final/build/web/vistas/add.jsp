
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Pres Mar</title>

        <!-- Font Awesome Icons -->
        <link href="vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>

        <!-- Plugin CSS -->
        <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">


        <!-- Theme CSS - Includes Bootstrap -->
        <link href="css/creative.min.css" rel="stylesheet">

    </head>
    <body>
        <div class="col-auto"> 
        <div class="modal-content">
            <div class="col-lg-6">
                <h1>Agregar Persona</h1>
                <form action="Controlador">
                    ID:<br>
                    <input class="form-control" type="number" name="txtId"><br>                    
                    Nombres: <br>
                    <input class="form-control" type="text" name="txtNom"><br>
                    Cedula: <br>
                    <input class="form-control" type="text" name="txtDni" ><br>
                    Edad: <br>
                    <input class="form-control" type="text" name="txtEdad" ><br>
                    Estado Civil <br>
                    <input class="form-control" type="text" name="txtEstCiv" ><br>
                    Ocupacion: <br>
                    <input class="form-control" type="text" name="txtOcup" ><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>

        </div>
            </div>
    </body>
</html>

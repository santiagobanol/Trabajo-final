<%-- 
    Document   : Registro
    Created on : 1/10/2019, 05:07:10 PM
    Author     : ubuntusb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    Informacion de ususario
                </div>                
                <div class="modal-body">
                    <form class="form" role="form" autocomplete="off">
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Nombre Completo</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="nombre" >
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Cedula</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="cedula" >
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Edad</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="number" name="edad">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Estado civil</label>
                            <div class="col-lg-9">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Seleccione una opcion
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">Soltero</a>
                                    <a class="dropdown-item" href="#">Casado</a>                                    
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Ocupacion</label>
                            <div class="col-lg-9">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Seleccione una opcion
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">Tabaja tiempo completo</a>
                                    <a class="dropdown-item" href="#">No trabaja</a>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Usuario</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" >
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Contraseña</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="password" >
                            </div>
                        </div>                    
                        <div class="form-group row">
                            <div class="col-lg-12 text-center">
                                <input type="reset" class="btn btn-secondary" value="Cancelar">
                                <input type="button" class="btn btn-primary" value="Guardar">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/creative.min.js"></script>
    </body>   
</html>

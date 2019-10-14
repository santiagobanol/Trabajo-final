<%-- 
    Document   : loginAdmin
    Created on : 7/10/2019, 02:24:04 PM
    Author     : ubuntusb
--%>

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
    <!--
    <body>
        <h1>Ingresar admin</h1>
        <form action="Controlador" >
            <input type="text" name="txtUsr"/>
            <input type="password" name="txtContra"/>
            <input class="btn btn-primary" type="submit" name="accion" value="login">

        </form>
    </body>
    -->
    <body>
        <div class="modal-dialog text-center">            
            <div class="col-auto main-holi"> 
                <form class="col-12" action="Controlador">   
                    <div class="modal-content">                    
                        <div class="modal-body">
                                <div class="form-group">
                                    <input type="text" name="txtUsr" class="form-control" placeholder="Identificacion" />
                                </div>
                                <div class="form-group">
                                    <input type="password" name="txtContra" class="form-control" placeholder="Contraseña" />
                                </div>                             
                        </div>     
                        <div class="modal-footer">
                            <input class="btn btn-primary" type="submit" name="accion" value="Ingresar">
                        </div>
                    </div>
                </form>    
            </div>             
        </div>
    </body>
</html>

<%-- 
    Document   : add
    Created on : 3/10/2019, 12:10:39 PM
    Author     : ubuntusb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar Personas</h1>
            <form action="Controlador">
                ID:<br>
                <input type="text" name="txtDni"><br>
                Nombres:<br>
                <input type="text" name="txtNom"><br>
                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>

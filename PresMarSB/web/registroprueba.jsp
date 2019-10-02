<%-- 
    Document   : registroprueba
    Created on : 1/10/2019, 06:30:35 PM
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
        <form action="./crear_usuario" method="POST">
            Nombre: <input type="text" name="nombre"/>
            Cedula: <input type="text" name="cedula"/>
            <input type="submit" value="Registrar" />
        </form>
    </body>
</html>

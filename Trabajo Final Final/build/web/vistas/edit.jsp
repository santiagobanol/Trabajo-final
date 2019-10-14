
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
              <%
              PersonaDAO dao=new PersonaDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              Persona p=(Persona)dao.list(id);
          %>
            <h1>Modificar Persona</h1>
            <form action="Controlador">
                Cuenta Bancaria:<br>
                <input class="form-control" type="text" name="txtDni" value="<%= p.getId()%>"><br>
                Nombre: <br>
                <input class="form-control" type="text" name="txtNom" value="<%= p.getNom()%>"><br>
                Cedula: <br>
                <input class="form-control" type="text" name="txtDni" value="<%= p.getDni()%>"><br>
                Edad: <br>
                <input class="form-control" type="text" name="txtEdad" value="<%= p.getEdad()%>"><br>
                Estado Civil <br>
                <input class="form-control" type="text" name="txtEstCiv" value="<%= p.getEstCivil()%>"><br>
                Ocupacion: <br>
                <input class="form-control" type="text" name="txtOcup" value="<%= p.getOcupacion()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= p.getId()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>

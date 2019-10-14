
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PersonaDAO"%>
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
            <h1>Personas</h1>
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">CUENTA BANCARIA</th>
                        <th class="text-center">NOMBRES</th>                        
                        <th class="text-center">DNI</th>
                        <th class="text-center">EDAD</th>
                        <th class="text-center">ESTADO CIVIL</th>
                        <th class="text-center">OCUPACION</th>                       
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao=new PersonaDAO();
                    List<Persona>list=dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per=null;
                    while(iter.hasNext()){
                        per=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= per.getId()%></td>
                        <td><%= per.getNom()%></td>
                        <td class="text-center"><%= per.getDni()%></td>
                        <td><%= per.getEdad()%></td>
                        <td><%= per.getEstCivil()%></td>
                        <td><%= per.getOcupacion()%></td>
                        
                        
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= per.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%= per.getId()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
                </div> 
    </body>
</html>

package controlador;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;
import modelo.PersonaDAO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mateo.llano
 */
public class AdminPersona extends HttpServlet { 
    
    PersonaDAO perDAO = new PersonaDAO();
    Persona per = new Persona();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException { 
        RequestDispatcher view = request.getRequestDispatcher("registroprueba.jsp");
        view.forward(request, response);
    } 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nombre");
        String iden = request.getParameter("cedula");

        per.setNombre(nom);
        per.setCedula(iden);
        perDAO.agregar(per);

        RequestDispatcher view = request.getRequestDispatcher("registroprueba.jsp");
        request.setAttribute("mensaje", "Persona agregada satisfactoriamente");
        view.forward(request, response);
    }

}

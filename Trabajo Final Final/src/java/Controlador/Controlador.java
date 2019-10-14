
package Controlador;

import Modelo.Persona;
import ModeloDAO.AdminDAO;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {

    String listar="vistas/listar.jsp";
    String add="vistas/add.jsp";
    String edit="vistas/edit.jsp";
    Persona p=new Persona();
    PersonaDAO dao=new PersonaDAO();
    int id;
    int edadInt;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            String id=request.getParameter("txtId");
            String nom=request.getParameter("txtNom");
            String dni=request.getParameter("txtDni");
            String edad=request.getParameter("txtEdad");
            String estCiv=request.getParameter("txtEstCiv");
            String ocup=request.getParameter("txtOcup");
            
            int idnum = Integer.parseInt(id);
            p.setId(idnum);
            p.setDni(dni);
            p.setNom(nom);
            int edadint = Integer.parseInt(edad);
            p.setEdad(edadint);
            p.setEstCivil(estCiv);
            p.setOcupacion(ocup);
            dao.add(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("cuentabancaria"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            id=Integer.parseInt(request.getParameter("txtid"));
            String nom=request.getParameter("txtNom");
            String dni=request.getParameter("txtDni");
            edadInt=Integer.parseInt(request.getParameter("txtEdad"));
            String estCiv=request.getParameter("txtEstCiv");
            String ocup=request.getParameter("txtOcup");
            
            p.setId(id);
            p.setNom(nom);
            p.setDni(dni);
            p.setEdad(edadInt);
            p.setEstCivil(estCiv);
            p.setOcupacion(ocup);
            dao.edit(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("cuentabancaria"));
            p.setId(id);
            dao.eliminar(id);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("Ingresar")){
            String usr=request.getParameter("txtUsr");
            String pass=request.getParameter("txtContra");
            AdminDAO admLog=new AdminDAO();
            if(admLog.consultaadmin(usr, pass)){
                acceso=listar;
            }else{
                acceso="loginAdmin.jsp";
            }
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

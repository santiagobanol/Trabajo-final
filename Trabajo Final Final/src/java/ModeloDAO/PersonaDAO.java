
package ModeloDAO;

import Config.Conexion;
import Intefaces.CRUD;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PersonaDAO implements CRUD{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p=new Persona();
    
    @Override
    public List listar() {
        ArrayList<Persona>list=new ArrayList<>();
        String sql="select * from usuarios";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Persona per=new Persona();
                per.setId(rs.getInt("cuentabancaria"));
                per.setNom(rs.getString("nombre"));
                per.setDni(rs.getString("DNI"));
                per.setEdad(rs.getInt("edad"));
                per.setEstCivil(rs.getString("estadocivil"));
                per.setOcupacion(rs.getString("ocupacion"));               
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        String sql="select * from usuarios where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setId(rs.getInt("cuentabancaria"));
                p.setNom(rs.getString("nombre"));
                p.setDni(rs.getString("DNI")); 
                p.setEdad(rs.getInt("edad"));
                p.setEstCivil(rs.getString("estadocivil"));
                p.setOcupacion(rs.getString("ocupacion"));
                
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Persona per) {
       String sql="INSERT INTO usuarios values("
               + "'"+per.getId()+
               "','"+per.getNom()+
               "','"+per.getDni()+        
               "','"+per.getEdad()+
               "','"+per.getEstCivil()+
               "','"+per.getOcupacion()+              
               "')";
       
      
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Persona per) {
        String sql="update usuarios set "
                + "Nombres='"+per.getNom()+"',"
                + "DNI='"+per.getDni()+"',"
                + "edad='"+per.getEdad()+"',"
                + "estadocivil='"+per.getEstCivil()+"',"
                + "ocupacion='"+per.getOcupacion()                
                +"'where Id="+per.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from usuarios where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}

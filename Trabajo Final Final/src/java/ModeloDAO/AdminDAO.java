/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Config.Conexion;

/**
 *
 * @author ubuntusb
 */
public class AdminDAO extends Conexion{
    public boolean consultaadmin(String usuario, String contra){
        PreparedStatement pst=null;
        ResultSet rs=null;
        try {
            String consultaAdmin="select * from admin where user = ? and pass = ?";
            pst = getConnection().prepareStatement(consultaAdmin);
            pst.setString(1, usuario);
            pst.setString(2, contra);
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
            
        } catch (Exception e) {
            System.err.println("Error:::"+e);
        }
        finally{
            try {
                if(getConnection() != null )getConnection().close();
                if(pst != null) pst.close();
                if(rs != null)rs.close();
            } catch (Exception e) {
                System.err.println("Error---"+e);
            }
        }
        return false;
    }
    
}

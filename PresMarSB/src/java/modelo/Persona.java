/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author mateo.llano
 */
public class Persona {
    
    protected Integer id;
    protected String nombre;
    protected String cedula;

    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getCorreo() { return cedula; }
    public void setCedula(String cedula) { this.cedula = cedula; }

    
}

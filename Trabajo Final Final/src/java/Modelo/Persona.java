
package Modelo;

public class Persona {
    int id;
    String dni;
    String nom;
    String ocupacion;
    int edad;
    String estCivil;
    

    public Persona() {
    }

    public Persona(String dni, String nom, String ocupacion, int edad, String estCivil) {
        this.dni = dni;
        this.nom = nom;
        this.ocupacion = ocupacion;
        this.edad = edad;
        this.estCivil = estCivil;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getOcupacion() {
        return ocupacion;
    }

    public void setOcupacion(String ocupacion) {
        this.ocupacion = ocupacion;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getEstCivil() {
        return estCivil;
    }

    public void setEstCivil(String estCivil) {
        this.estCivil = estCivil;
    }

    
    
    
    
}

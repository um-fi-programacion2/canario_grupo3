package model;
// Generated 10/12/2012 11:24:23 by Hibernate Tools 3.2.1.GA



/**
 * Aplicaciones generated by hbm2java
 */
public class Aplicaciones  implements java.io.Serializable {


     private int idaplicaciones;
     private String nombre;
     private String apikey;
     private int idusuario;
     private Integer permitido;

    public Aplicaciones() {
    }

	
    public Aplicaciones(int idaplicaciones, int idusuario) {
        this.idaplicaciones = idaplicaciones;
        this.idusuario = idusuario;
    }
    public Aplicaciones(int idaplicaciones, String nombre, String apikey, int idusuario, Integer permitido) {
       this.idaplicaciones = idaplicaciones;
       this.nombre = nombre;
       this.apikey = apikey;
       this.idusuario = idusuario;
       this.permitido = permitido;
    }
   
    public int getIdaplicaciones() {
        return this.idaplicaciones;
    }
    
    public void setIdaplicaciones(int idaplicaciones) {
        this.idaplicaciones = idaplicaciones;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApikey() {
        return this.apikey;
    }
    
    public void setApikey(String apikey) {
        this.apikey = apikey;
    }
    public int getIdusuario() {
        return this.idusuario;
    }
    
    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }
    public Integer getPermitido() {
        return this.permitido;
    }
    
    public void setPermitido(Integer permitido) {
        this.permitido = permitido;
    }




}


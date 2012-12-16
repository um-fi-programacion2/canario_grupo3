package model;
// Generated 10/12/2012 11:24:23 by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Usuarios generated by hbm2java
 */
public class Usuarios  implements java.io.Serializable {


     private Long idu;
     private String nombre;
     private String bio;
     private Date date;
     private String mail;
     private String pass;
     private String imagen;
     private String apikey;
     private String flag1;
     private String flag2;
     private String localidad;
     private String usuario;

    
    public Usuarios() {
    }

	
    public Usuarios(String nombre, String bio, String mail, String pass, String imagen) {
        this.nombre = nombre;
        this.bio = bio;
        this.mail = mail;
        this.pass = pass;
        this.imagen = imagen;
    }
    public Usuarios(String nombre, String bio, Date date, String mail, String pass, String imagen, String apikey, String flag1, String flag2, String localidad, String usuario) {
       this.nombre = nombre;
       this.bio = bio;
       this.date = date;
       this.mail = mail;
       this.pass = pass;
       this.imagen = imagen;
       this.apikey = apikey;
       this.flag1 = flag1;
       this.flag2 = flag2;
       this.localidad = localidad;
       this.usuario=usuario;
    }
   
    public Long getIdu() {
        return this.idu;
    }
    
    public void setIdu(Long idu) {
        this.idu = idu;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getBio() {
        return this.bio;
    }
    
    public void setBio(String bio) {
        this.bio = bio;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    public String getMail() {
        return this.mail;
    }
    
    public void setMail(String mail) {
        this.mail = mail;
    }
    public String getPass() {
        return this.pass;
    }
    
    public void setPass(String pass) {
        this.pass = pass;
    }
    public String getImagen() {
        return this.imagen;
    }
    
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    public String getApikey() {
        return this.apikey;
    }
    
    public void setApikey(String apikey) {
        this.apikey = apikey;
    }
    public String getFlag1() {
        return this.flag1;
    }
    
    public void setFlag1(String flag1) {
        this.flag1 = flag1;
    }
    public String getFlag2() {
        return this.flag2;
    }
    
    public void setFlag2(String flag2) {
        this.flag2 = flag2;
    }
    public String getLocalidad() {
        return this.localidad;
    }
    
    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }



}



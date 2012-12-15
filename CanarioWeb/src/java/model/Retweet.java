/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author el pampa
 */
public class Retweet {
    private String idusuario;
    private String idseguidor;
    private String imagen;
    private String string;
    private Date date;
    private String nUsuario;
    private String nSeguidor;

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getIdseguidor() {
        return idseguidor;
    }

    public void setIdseguidor(String idseguidor) {
        this.idseguidor = idseguidor;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getString() {
        return string;
    }

    public void setString(String string) {
        this.string = string;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getnUsuario() {
        return nUsuario;
    }

    public void setnUsuario(String nUsuario) {
        this.nUsuario = nUsuario;
    }

    public String getnSeguidor() {
        return nSeguidor;
    }

    public void setnSeguidor(String nSeguidor) {
        this.nSeguidor = nSeguidor;
    }

    public Retweet() {
    }
    
}

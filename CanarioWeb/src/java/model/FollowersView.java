/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author el pampa
 */
public class FollowersView {
   private Long idseguidor;
   private Long idu;
   private String nombre;
   private String imagen;
   private int relacion;

    public int getRelacion() {
        return relacion;
    }

    public void setRelacion(int relacion) {
        this.relacion = relacion;
    }

    public Long getIdseguidor() {
        return idseguidor;
    }

    public void setIdseguidor(Long idseguidor) {
        this.idseguidor = idseguidor;
    }

    public Long getIdu() {
        return idu;
    }

    public void setIdu(Long idu) {
        this.idu = idu;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public FollowersView() {
    }
}

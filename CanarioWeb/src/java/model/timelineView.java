package model;

/**
 *
 * @author Franco
 * Vista de la base de datos para mostrar una linda tabla :D
 */
public class timelineView {
   private Long idt;
   private Long idu;
   private String string;
   private String timestam;
   private String nombre;
   private String imagen;
   private Long idsesion;

    public Long getIdsesion() {
        return idsesion;
    }

    public void setIdsesion(Long idsesion) {
        this.idsesion = idsesion;
    }
   public timelineView() {    
   }

    public Long getIdt() {
        return idt;
    }

    public void setIdt(Long idt) {
        this.idt = idt;
    }

    public Long getIdu() {
        return idu;
    }

    public void setIdu(Long idu) {
        this.idu = idu;
    }

    public String getString() {
        return string;
    }

    public void setString(String string) {
        this.string = string;
    }

    public String getTimestam() {
        return timestam;
    }

    public void setTimestam(String timestam) {
        this.timestam = timestam;
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

}
   

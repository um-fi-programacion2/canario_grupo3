package model;
// Generated 10/12/2012 11:24:23 by Hibernate Tools 3.2.1.GA



/**
 * Twits generated by hbm2java
 */
public class Twits  implements java.io.Serializable {


     private Long idt;
     private Long idu;
     private String string;
     private String timestam;

    public Twits() {
    }

    public Twits(Long idu, String string, String timestam) {
       this.idu = idu;
       this.string = string;
       this.timestam = timestam;
    }
   
    public Long getIdt() {
        return this.idt;
    }
    
    public void setIdt(Long idt) {
        this.idt = idt;
    }
    public long getIdu() {
        return this.idu;
    }
    
    public void setIdu(Long idu) {
        this.idu = idu;
    }
    public String getString() {
        return this.string;
    }
    
    public void setString(String string) {
        this.string = string;
    }
    public String getTimestam() {
        return this.timestam;
    }
    
    public void setTimestam(String timestam) {
        this.timestam = timestam;
    }




}



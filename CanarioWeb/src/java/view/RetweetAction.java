/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.ListarTwitsDao;
import dao.TwitDao;
import java.util.ArrayList;
import java.util.Map;
import model.FollowersView;
import model.Twits;
import model.Usuarios;
import model.timelineView;

/**
 *
 * @author el pampa
 */

    
 public class RetweetAction extends ActionSupport {
     private Long idt;
     private Long idu;
     private String string;
     private String timestam;
     private String nombre;
     private String aux;

    public String getAux() {
        return aux;
    }

    public void setAux(String aux) {
        this.aux = aux;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

   
    public RetweetAction() {
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
         
        
         this.idu=idu;

    
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
    
    
    @Override
    public String execute() throws Exception {
       aux= "RT @"+nombre+": \" "+ string + "\"";
    Twits tw = new Twits();
    tw.setIdt(idt);
    tw.setIdu(idu);
    tw.setString(aux);
    tw.setTimestam(timestam);

    if (TwitDao.saveTwit(tw)) {
            return "bien";
        }
        else
            return "fail";
    }
    
   
 }
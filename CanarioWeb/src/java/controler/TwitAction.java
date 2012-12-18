/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

/**
 *
 * @author Franco
 */
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.ListarTwitsDao;
import dao.TwitDao;
import java.util.ArrayList;
import java.util.Map;

import model.Twits;

public class TwitAction extends ActionSupport {
     private Long idt;
     private Long idu;
     private String strings;
     private String timestam;

   
    public TwitAction() {
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
    
    
    public void setStrings(String strings) {
        this.strings = strings;
    }
    public String getTimestam() {
        return this.timestam;
    }
    
    public void setTimestam(String timestam) {
        this.timestam = timestam;
    }
    
    
    @Override
    public String execute() throws Exception {
         Map auth = ActionContext.getContext().getSession();
         
         if(!auth.isEmpty()){
         
            Twits tw = new Twits();
            tw.setIdt(idt);
            tw.setIdu(idu);
            tw.setString(strings);
            tw.setTimestam(timestam);
            String aux = this.wrap(tw.getString());
            tw.setString(aux);
            if (TwitDao.saveTwit(tw)) {
                    return "success";
                }
            else {
                    return "fail";
                }
            }
         else { 
                return "empty";
                }
        }

               public static String wrap(String in) {
                   Map auth = ActionContext.getContext().getSession();
                   if(!auth.isEmpty()){
                                int i;
                                String out="";
                                String [] palabras =in.split(" ");
                                for(i = 0; i < palabras.length; i++){
                                   if (palabras[i].length() > 25) { 
                                palabras[i] = palabras[i].substring(0, 25);
                                    }
                                }
                                for(i=0; i<palabras.length; i++) {
                                    out=out.concat(palabras[i] + " ");
                                }
                             return out;
                             }
                   else {
                       return "empty";
                    }
               }
  
}
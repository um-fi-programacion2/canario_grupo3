/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

/**
 *
 * @author Franco
 */
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.TwitDao;
import java.util.ArrayList;
import java.util.Map;

import model.Twits;

public class TwitAction extends ActionSupport {
     private Long idt;
     private Long idu;
     private String string;
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
Twits tw = new Twits();
tw.setIdt(idt);
tw.setIdu(idu);
tw.setString(string);
tw.setTimestam(timestam);

if (TwitDao.saveTwit(tw)) {
        return "success";
    }
    else
        return "fail";
}
    
   
}
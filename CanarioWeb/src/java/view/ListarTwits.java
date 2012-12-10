/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import dao.ListarTwitsDao;
import java.util.ArrayList;
import java.util.List;
import model.Twits;

/**
 *
 * @author Franco
 */
public class ListarTwits {
    
    public ArrayList <Twits> listaTwits = new ArrayList<Twits>();
    
    
     public String execute() throws Exception {
    
       
       listaTwits = ListarTwitsDao.getTwitList();
         
    return "fin";
    }

    public ArrayList<Twits> getlistaTwits() {
        return listaTwits;
    }

    public void setlistaTwits(ArrayList<Twits> listaTwits) {
        this.listaTwits = listaTwits;
    }

}

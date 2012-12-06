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
    
    public ArrayList <Twits> listarTwits = new ArrayList<Twits>();
    public List getListarTwits() {
        return listarTwits;
    }
    
     public String execute() throws Exception {
    
       
       listarTwits = ListarTwitsDao.getTwitList();
         
    return "fin";
    }
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import dao.ListarTwitsDao;
import java.util.ArrayList;
import model.Twits;

/**
 *
 * @author Franco
 */
public class ListarTwits {
     public String execute() throws Exception {
    
        ArrayList <Twits> listaTwits = new ArrayList<Twits>();
        listaTwits = ListarTwitsDao.getTwitList();
        return "success";
    }
    
}

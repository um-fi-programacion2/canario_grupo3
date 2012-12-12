/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import com.opensymphony.xwork2.ActionContext;
import java.util.ArrayList;
import java.util.Map;
import model.Usuarios;

/**
 *
 * @author el pampa
 */
public class ListarFollowingsAction {
    ArrayList<Usuarios> listaFollowings = new ArrayList<Usuarios>();
  

    public ListarFollowingsAction() {
    }

    public ArrayList<Usuarios> getListaFollowings() {
        return listaFollowings;
    }

    public void setListaFollowings(ArrayList<Usuarios> listaFollowings) {
        this.listaFollowings = listaFollowings;
    }

    
    public String execute() throws Exception {
        
         
       listaFollowings=dao.relacionesDao.getFollowings();
       
       
       
       return "bien";
      

    }
}

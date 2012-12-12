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
public class ListarFollowersAction {
    ArrayList<Usuarios> listaFollowers = new ArrayList<Usuarios>();

    public ArrayList<Usuarios> getListaFollowers() {
        return listaFollowers;
    }

    public void setListaFollowers(ArrayList<Usuarios> listaFollowers) {
        this.listaFollowers = listaFollowers;
    }

    public ListarFollowersAction() {
    }
    public String execute() throws Exception {
    
        
       listaFollowers=dao.relacionesDao.getFollowers();
        
       
       
       return "bien";
      

    }
}

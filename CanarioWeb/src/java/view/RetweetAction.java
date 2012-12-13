/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import com.opensymphony.xwork2.ActionContext;
import dao.ListarTwitsDao;
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
public class RetweetAction {
    
 public ArrayList <Twits> listaTwits = new ArrayList<Twits>();
    public ArrayList <timelineView> listaTabla = new ArrayList<timelineView>();

    
    
     public String execute() throws Exception {
    
       
       listaTwits = ListarTwitsDao.getTwitList();
       
      
      for (int i = 0; i < listaTwits.size(); i++) {
           timelineView e = new timelineView();
        listaTabla.add(i, e);
        listaTabla.get(i).setIdt(listaTwits.get(i).getIdt());
        listaTabla.get(i).setIdu(listaTwits.get(i).getIdu());
        listaTabla.get(i).setString(listaTwits.get(i).getString());
        listaTabla.get(i).setTimestam(listaTwits.get(i).getTimestam());
        listaTabla.get(i).setNombre(ListarTwitsDao.getSingleUser(listaTwits.get(i).getIdu()).getNombre());
        listaTabla.get(i).setImagen(ListarTwitsDao.getSingleUser(listaTwits.get(i).getIdu()).getImagen());


        }

         
    return "fin";
    }

     /*GET AND SET*/
    public ArrayList<Twits> getlistaTwits() {
        return listaTwits;
    }

    public void setlistaTwits(ArrayList<Twits> listaTwits) {
        this.listaTwits = listaTwits;
    }

    public ArrayList<timelineView> getListaTabla() {
        return listaTabla;
    }

    public void setListaTabla(ArrayList<timelineView> listaTabla) {
        this.listaTabla = listaTabla;
    }

}

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
import model.Usuarios;

/**
 *
 * @author el pampa
 */
public class ListarFollowersAction {
    ArrayList<Usuarios> listaFollowersU = new ArrayList<Usuarios>();
    ArrayList<FollowersView> lista = new ArrayList<FollowersView>();

    public ArrayList<Usuarios> getListaFollowersU() {
        return listaFollowersU;
    }

    public void setListaFollowersU(ArrayList<Usuarios> listaFollowersU) {
        this.listaFollowersU = listaFollowersU;
    }

    public ArrayList<FollowersView> getLista() {
        return lista;
    }

    public void setLista(ArrayList<FollowersView> lista) {
        this.lista = lista;
    }
     Map auth = ActionContext.getContext().getSession();  
    public ListarFollowersAction() {
    }
    public String execute() throws Exception {
    
    
       listaFollowersU=dao.relacionesDao.getFollowers();

       
       for(int i=0;i<listaFollowersU.size();i++){
           FollowersView e = new FollowersView();
       lista.add(i,e);
       
       lista.get(i).setIdu(((Number)auth.get("idusuario")).longValue());
       

       
       for(int i=0;i<listaFollowersU.size();i++){
           FollowersView e = new FollowersView();
       lista.add(i,e);
       
       lista.get(i).setIdu(((Number)auth.get("idusuario")).longValue());
       
       lista.get(i).setNombre(ListarTwitsDao.getSingleUser(listaFollowersU.get(i).getIdu()).getNombre());
       lista.get(i).setImagen(ListarTwitsDao.getSingleUser(listaFollowersU.get(i).getIdu()).getImagen());
       lista.get(i).setIdseguidor(listaFollowersU.get(i).getIdu());
       lista.get(i).setRelacion(dao.relacionesDao.checkRelacion(((Number)auth.get("idusuario")).longValue(), listaFollowersU.get(i).getIdu().longValue()));
       }
    
         
       return "bien";
      
       
       

    }
}

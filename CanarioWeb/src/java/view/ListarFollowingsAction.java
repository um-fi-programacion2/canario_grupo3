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
public class ListarFollowingsAction {
  ArrayList<Usuarios> listaFollowersU = new ArrayList<Usuarios>();
    ArrayList<FollowersView> lista = new ArrayList<FollowersView>();
    Map auth = ActionContext.getContext().getSession();
    
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
       
    public ListarFollowingsAction() {
    }
    public String execute() throws Exception {
    
    
       listaFollowersU=dao.relacionesDao.getFollowings(((Number)auth.get("idusuario")).longValue());

       
       for(int i=0;i<listaFollowersU.size();i++){
           FollowersView e = new FollowersView();
       lista.add(i,e);
       lista.get(i).setIdmia(((Number)auth.get("idusuario")).longValue());
       lista.get(i).setIdu(((Number)auth.get("idusuario")).longValue());
       lista.get(i).setNombre(ListarTwitsDao.getSingleUser(listaFollowersU.get(i).getIdu()).getNombre());
       lista.get(i).setImagen(ListarTwitsDao.getSingleUser(listaFollowersU.get(i).getIdu()).getImagen());
       lista.get(i).setIdseguidor(listaFollowersU.get(i).getIdu());
       lista.get(i).setRelacion(dao.relacionesDao.checkRelacion(((Number)auth.get("idusuario")).longValue(), listaFollowersU.get(i).getIdu().longValue()));
       }
        
       return "bien";
    }
      public String ListarFollowingsPublico() throws Exception{
          
          System.out.println("este es el id publico: "+((Number)auth.get("publicocontext")).longValue());
        listaFollowersU=dao.relacionesDao.getFollowings(((Number)auth.get("publicocontext")).longValue());
          System.out.println("entre al listarfollowingspublico");
       for(int i=0;i<listaFollowersU.size();i++){
           FollowersView e = new FollowersView();
       lista.add(i,e);
       lista.get(i).setIdmia(((Number)auth.get("idusuario")).longValue());
       lista.get(i).setIdu(((Number)auth.get("publicocontext")).longValue());
       lista.get(i).setNombre(ListarTwitsDao.getSingleUser(listaFollowersU.get(i).getIdu()).getNombre());
       lista.get(i).setImagen(ListarTwitsDao.getSingleUser(listaFollowersU.get(i).getIdu()).getImagen());
       lista.get(i).setIdseguidor(listaFollowersU.get(i).getIdu());
       
            if(((Number)auth.get("idusuario")).longValue()==listaFollowersU.get(i).getIdu().longValue()){
            lista.get(i).setRelacion(2);
            }else{
            lista.get(i).setRelacion(dao.relacionesDao.checkRelacion(((Number)auth.get("idusuario")).longValue(), listaFollowersU.get(i).getIdu().longValue()));
            }
       } 
       return "bien";
    }
}

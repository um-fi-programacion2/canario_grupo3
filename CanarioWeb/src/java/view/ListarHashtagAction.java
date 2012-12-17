/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.ListarTwitsDao;
import dao.PerfilDao;
import dao.relacionesDao;
import java.util.ArrayList;
import java.util.Map;
import model.Twits;
import model.Usuarios;
import model.timelineView;

/**
 *
 * @author el pampa
 */



public class ListarHashtagAction extends ActionSupport {
	private String u;
        private Usuarios reg = new Usuarios();
        private ArrayList<timelineView> listaTablaHash = new ArrayList<timelineView>();
        private ArrayList<Twits> listaTwits=new ArrayList<Twits>();
        private String h;
        private String creador;

        int followers;
        int following;
        int countTwits;
        int relacion;
        long usuariopublico;

    public String getCreador() {
        return creador;
    }

    public void setCreador(String creador) {
        this.creador = creador;
    }
    public long getUsuariopublico() {
        return usuariopublico;
    }

    public void setUsuariopublico(long usuariopublico) {
        this.usuariopublico = usuariopublico;
    }

    public ListarHashtagAction() {
    }

    public String getH() {
        return h;
    }

    public void setH(String h) {
        this.h = h;
    }
    public String getU() {
        return u;
    }

    public void setU(String u) {
        this.u = u;
    }

    public Usuarios getReg() {
        return reg;
    }

    public void setReg(Usuarios reg) {
        this.reg = reg;
    }

    public int getFollowers() {
        return followers;
    }

    public void setFollowers(int followers) {
        this.followers = followers;
    }

    public int getFollowing() {
        return following;
    }

    public void setFollowing(int following) {
        this.following = following;
    }

    public int getCountTwits() {
        return countTwits;
    }

    public void setCountTwits(int countTwits) {
        this.countTwits = countTwits;
    }

    public int isRelacion() {
        return relacion;
    }

    public void setRelacion(int relacion) {
        this.relacion = relacion;
    }
     public ArrayList<timelineView> getListaTablaHash() {
        return listaTablaHash;
    }

    public void setListaTablaHash(ArrayList<timelineView> listaTablaHash) {
        this.listaTablaHash = listaTablaHash;
    }

    public ArrayList<Twits> getListaTwits() {
        return listaTwits;
    }

    public void setListaTwits(ArrayList<Twits> listaTwits) {
        this.listaTwits = listaTwits;
    }


    
    public String execute() throws Exception {


    Map auth = ActionContext.getContext().getSession();
    reg= PerfilDao.traerPerfil();
    

                if (reg != null) {
                usuariopublico=reg.getIdu();
                followers = relacionesDao.countFollowers(reg.getIdu());
                following = relacionesDao.countFollowing(reg.getIdu());
                countTwits = relacionesDao.countTwits(reg.getIdu());


                if(((Number)auth.get("idusuario")).longValue() != reg.getIdu()) {

                relacion = relacionesDao.checkRelacion(((Number)auth.get("idusuario")).longValue(),reg.getIdu());
                }
                else {
                    relacion = 2;
                }

                    // return "bien";
                }
    
        
    
    // lista de hashtags!!!!
    
      //  System.out.println("este es el contenido de h: "+this.getH());
         // if(dao.ListarHashTagsDao.getListaHashTags(this.getH()).size() >0){
            listaTwits=dao.ListarHashTagsDao.getListaHashTags(this.getH());
            
                    for (int i = 0; i < listaTwits.size(); i++) {
                       timelineView e = new timelineView();
                            listaTablaHash.add(i, e);
                            listaTablaHash.get(i).setIdt(listaTwits.get(i).getIdt());
                            listaTablaHash.get(i).setIdu(listaTwits.get(i).getIdu());
                            listaTablaHash.get(i).setString(Parser.parseTweet(listaTwits.get(i).getString()));
                            listaTablaHash.get(i).setTimestam(listaTwits.get(i).getTimestam());
                            listaTablaHash.get(i).setNombre(ListarTwitsDao.getSingleUser(listaTwits.get(i).getIdu()).getNombre());
                            listaTablaHash.get(i).setImagen(ListarTwitsDao.getSingleUser(listaTwits.get(i).getIdu()).getImagen());
                            listaTablaHash.get(i).setIdsesion(((Number)auth.get("idusuario")).longValue());

                    }
                    creador=listaTablaHash.get(0).getNombre();
              
    //}
       return "bien";
       
        
    }
    
  
    
}

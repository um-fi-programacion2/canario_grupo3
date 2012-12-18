/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.PerfilDao;
import java.util.ArrayList;
import java.util.Map;
import model.Aplicaciones;
import model.Twits;
import model.Usuarios;

/**
 *
 * @author el pampa
 */
public class ApiAction extends ActionSupport{
    public ArrayList <Aplicaciones> listaApp = new ArrayList<Aplicaciones>();

    public ApiAction() {
    }
    Usuarios config = new Usuarios();

    public Usuarios getConfig() {
        return config;
    }

    public void setConfig(Usuarios config) {
        this.config = config;
    }

    public ArrayList<Aplicaciones> getListaApp() {
        return listaApp;
    }

    public void setListaApp(ArrayList<Aplicaciones> listaApp) {
        this.listaApp = listaApp;
    }
 
    @Override
    public String execute() throws Exception {
         Map auth1 = ActionContext.getContext().getSession();
     if(!auth1.isEmpty()){
    config= PerfilDao.traerPerfil();
    listaApp=PerfilDao.getApps();  
    return "bien";
    }else{
         return "empty";
     }
    }
    
}

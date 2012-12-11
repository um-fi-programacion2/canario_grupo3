/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.PerfilDao;
import model.Usuarios;

/**
 *
 * @author el pampa
 */
public class ConfigPerfilAction extends ActionSupport{

    public ConfigPerfilAction() {
    }
    Usuarios config = new Usuarios();

    public Usuarios getConfig() {
        return config;
    }

    public void setConfig(Usuarios config) {
        this.config = config;
    }
 
    @Override
    public String execute() throws Exception {

    config= PerfilDao.traerPerfil();
           
    return "bien";
    }
    
}

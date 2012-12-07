/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import dao.ListarTwitsDao;
import dao.PerfilDao;
import java.util.ArrayList;
import java.util.List;
import model.Twits;
import model.Usuarios;

/**
 *
 * @author el pampa
 */
public class traerPerfil {
    
     public ArrayList <Usuarios> traeperfil = new ArrayList<Usuarios>();

    public ArrayList<Usuarios> getTraeperfil() {
        return traeperfil;
    }
    
    
     public String execute() throws Exception {
    
       
       traeperfil = PerfilDao.traerPerfil();
         
    return "fin";
    }
    
}

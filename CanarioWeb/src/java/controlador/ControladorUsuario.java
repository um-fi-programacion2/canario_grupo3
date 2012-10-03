/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.opensymphony.xwork2.ModelDriven;
import java.util.ArrayList;
import modelo.dao.UsuarioDao;
import modelo.dao.UsuarioDaoImp;
import modelo.entidades.Usuarios;

/**
 *
 * @author el pampa
 */
public class ControladorUsuario implements ModelDriven<Usuarios> {
    Usuarios usuarios=new Usuarios();
    ArrayList<Usuarios> listaUsuarios=new ArrayList();
    UsuarioDao usuarioDao;
    String msj="";
    @Override
    public Usuarios getModel() {
        return usuarios;
    }
    public ControladorUsuario(){
        usuarioDao= new UsuarioDaoImp();
    }
    public String agregar(){
        if(usuarioDao.agregar(usuarios))
            msj="se agrego un nuevo usuario";
        else
            msj="hubo algun error";
    return "fin";
       
    }
     public String agregarUsuario(){
    return "exito";
       
    }
    
    
    public String usuarios(){
        listaUsuarios=usuarioDao.usuarios();
             
        return "fin";

        }

    public Usuarios getUsuarios() {
        return usuarios;
    }

    public ArrayList<Usuarios> getListaUsuarios() {
        return listaUsuarios;
    }

    public String getMsj() {
        return msj;
    }

    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }
    
    
}

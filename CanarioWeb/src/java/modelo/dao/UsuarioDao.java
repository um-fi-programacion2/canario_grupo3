/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import java.util.ArrayList;
import modelo.entidades.Usuarios;

/**
 *
 * @author el pampa
 */
public interface UsuarioDao {

    boolean agregar(Usuarios usuario);

    ArrayList<Usuarios> usuarios();

    
    
}

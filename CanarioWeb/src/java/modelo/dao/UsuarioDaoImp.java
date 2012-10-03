/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import java.util.ArrayList;
import modelo.entidades.Usuarios;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author el pampa
 */
public class UsuarioDaoImp implements UsuarioDao {
    Transaction transaction=null;
    Session session;
    @Override
    public boolean agregar(Usuarios usuario) {
        try{
            session=HibernateUtil.getSessionFactory().getCurrentSession();
            transaction=session.beginTransaction();
            session.save(usuario);
            transaction.commit();
                    
            return true;
        }catch(Exception e){
            if(transaction !=null)
                transaction.rollback();
        return false;
        }
    }

    @Override
    public ArrayList<Usuarios> usuarios() {
        
        try{
            Session session;
            session=HibernateUtil.getSessionFactory().getCurrentSession();
            return (ArrayList)session.createQuery("from Usuarios").list();
            
        }catch(Exception e){
            return null;
            
        }
    }

}

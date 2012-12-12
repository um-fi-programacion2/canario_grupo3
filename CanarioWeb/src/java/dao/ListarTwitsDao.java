/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.opensymphony.xwork2.ActionContext;
import java.util.ArrayList;
import java.util.Map;
import model.Twits;
import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Franco
 */
public class ListarTwitsDao {
    public static ArrayList <Twits> getTwitList() {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                    
                        Session s = sf.openSession();
			
                        
			 Query query = s.createQuery("FROM Twits where idu = :idu or idu IN (select siguiendo from Relaciones where idusuario = :idu) order by timestam desc");
                         query.setMaxResults(10);
                         Map auth = ActionContext.getContext().getSession();
                           
                         query.setParameter("idu", ((Number)auth.get("idusuario")).longValue());            
                         
                        return (ArrayList<Twits>)query.list();

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return null;
		}
  }

     public static Usuarios getSingleUser(Long idu) {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                      
                        Session s = sf.openSession();
			
                        
			 Query query = s.createQuery("FROM Usuarios where idu = :idu");
                         query.setParameter("idu", idu);            
                                                              s.disconnect();

                        return (Usuarios) query.list().get(0);

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return null;
		}
  }

}

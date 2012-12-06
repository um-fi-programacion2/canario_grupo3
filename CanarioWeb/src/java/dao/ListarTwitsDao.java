/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.opensymphony.xwork2.ActionContext;
import java.util.ArrayList;
import java.util.Map;
import model.Twits;
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
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        
			 Query query = s.createQuery("FROM Twits t where t.idu = :idu or t.idu in (from Relaciones r where r.seguidor= :idu)");
     
                         Map auth = ActionContext.getContext().getSession();
                           
                         query.setParameter("idu", ((Number)auth.get("idusuario")).longValue());            
                         
                        return (ArrayList<Twits>)query.list();

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return null;
		}
  }

    
}

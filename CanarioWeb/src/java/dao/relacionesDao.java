/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Franco
 */
public class relacionesDao {
       public static int countFollowers(Long idu) {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        
			 Query query = s.createQuery("FROM Relaciones where siguiendo = :idu");
                         query.setParameter("idu", idu.toString());            
                         
                        return query.list().size();

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return 0;
		}
  }
    public static int countFollowing(Long idu) {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        
			 Query query = s.createQuery("FROM Relaciones where idusuario = :idu");
                         query.setLong("idu", idu);
                        return query.list().size();

		
		} catch (Exception ex) {
			System.err.println("Error !!-->" + ex.getMessage());
			
			return 0;
		}
  }
    
     public static int countTwits(Long idu) {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        
			 Query query = s.createQuery("FROM Twits where idu = :idu");
                         query.setLong("idu", idu);
                        return query.list().size();

		
		} catch (Exception ex) {
			System.err.println("Error !!-->" + ex.getMessage());
			
			return 0;
		}
  }

}

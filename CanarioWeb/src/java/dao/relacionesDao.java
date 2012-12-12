/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Relaciones;
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

     public static int checkRelacion(Long idu, Long siguiendo) {
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        
			 Query query = s.createQuery("FROM Relaciones where idusuario = :idu and siguiendo = :siguiendo");
                        query.setLong("idu", idu);
                        query.setParameter("siguiendo", siguiendo.toString());
                                                 s.disconnect();

                        if(query.list().size() > 0) {
                            return 1;
                        }
                        else {
                            return 0;
                        }

		
		} catch (Exception ex) {
			System.err.println("Error :o-->" + ex.getMessage());
			
			return -1;
		}
  }
     public static int unfollow(Long idu, Long siguiendo) {
                	
                        Relaciones rel = new Relaciones();
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Session s = sf.openSession();
                        Transaction t = s.beginTransaction();
			Query query = s.createQuery("delete Relaciones where idusuario = :idu and siguiendo = :siguiendo");
                        query.setLong("idu", idu);
                        query.setParameter("siguiendo", siguiendo.toString());
                         int rows= query.executeUpdate();
                         t.commit();
                         s.disconnect();
                         			System.err.println("Columnas borradas-->" + rows);

                                                return 0;
                         
  }
     public static int follow(Long idu, Long siguiendo) {
                	                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        Relaciones re = new Relaciones();
                        re.setIdusuario( idu.intValue());
                        re.setSiguiendo(siguiendo.toString());
                        s.persist(re);
                        t.commit();
                                                 s.disconnect();

                       return 1;

		
		} catch (Exception ex) {
			System.err.println("Error-->" + ex.getMessage());
			return 0;
		}
    }
}
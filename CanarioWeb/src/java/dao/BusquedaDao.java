/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.opensymphony.xwork2.ActionContext;
import java.util.ArrayList;
import java.util.Map;
import model.Hashtags;
import model.Twits;
import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author el pampa
 */
public class BusquedaDao {
  public static ArrayList <Twits> getTwitList(String tweet) {
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                    
                        Session s = sf.openSession();
			
                        
			 Query query = s.createQuery("FROM Twits where string like CONCAT ('%',:tweet,'%') ");
                         
                          query.setString("tweet",tweet);            
                        
                         
                   
                         
                         return (ArrayList<Twits>)query.list();

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return null;
		}
  }
  
  public static ArrayList <Usuarios> getUsuarios(String nombre) {
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                    
                        Session s = sf.openSession();
			
                        
			 Query query = s.createQuery("FROM Usuarios where nombre like CONCAT ('%',:nombre,'%')");
                         
                         query.setString("nombre",nombre);            
                         
                   
                         
                         return (ArrayList<Usuarios>)query.list();

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return null;
		}
  }
  public static ArrayList <Hashtags> getHashtags(String tag) {
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                    
                        Session s = sf.openSession();
			
                        
			 Query query = s.createQuery("FROM Hashtags where string like CONCAT ('%',:tag,'%')");
                         
                         query.setString("tag",tag);          
                         
                         
                   
                         
                         return (ArrayList<Hashtags>)query.list();

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return null;
		}
  }
}

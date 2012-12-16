package dao;

import java.util.ArrayList;
import model.Hashtags;
import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Franco
 */
public class TopDao {
    public static ArrayList <Usuarios> getUsers() {
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                    
                        Session s = sf.openSession();
			
                        Query query1 = s.createSQLQuery("SELECT * FROM usuarios u LEFT JOIN twits t ON u.idu = t.idu GROUP BY t.idu ORDER BY count(t.idu) desc;")
                                .addEntity(Usuarios.class);
			 //Query query = s.createQuery("SELECT * FROM Usuarios u LEFT JOIN Twits t ON u.idu = t.idu GROUP BY t.idu ORDER BY count(t.idu) desc");
                         //query1.setMaxResults(10);           
                         //ArrayList top10 = query.list();
                        
                         			System.err.println("Debug !-->" + query1.list().size());
                         s.disconnect();

                         return (ArrayList<Usuarios>)query1.list();

		
		} catch (Exception ex) {
			System.err.println("Error !p-->" + ex.getMessage());
			
			return null;
		}
  }
    
     public static ArrayList <Hashtags> getHashtags() {
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                    
                        Session s = sf.openSession();
			
                        Query query1 = s.createSQLQuery("SELECT * FROM hashtags h LEFT JOIN hashaux ha ON h.idh = ha.idh GROUP BY ha.idh ORDER BY count(ha.idh) desc;")
                                .addEntity(Hashtags.class);
			 
                         s.disconnect();

                         return (ArrayList<Hashtags>)query1.list();

		
		} catch (Exception ex) {
			System.err.println("Error !p-->" + ex.getMessage());
			
			return null;
		}
  }
}

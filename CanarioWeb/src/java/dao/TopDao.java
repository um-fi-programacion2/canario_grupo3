package dao;

import com.opensymphony.xwork2.ActionContext;
import java.util.ArrayList;
import java.util.Map;
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
        
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session s = sf.openSession();
        Query query;
        
        String statment="";
            Map auth = ActionContext.getContext().getSession();
            String ciudad=auth.get("filteru").toString();
            if(ciudad.compareToIgnoreCase("todos") == 0 | ciudad.length()==0 | ciudad == null) {
        
            statment="SELECT * FROM usuarios u LEFT JOIN twits t ON u.idu = t.idu GROUP BY t.idu ORDER BY count(t.idu) desc limit 10;";
        query = s.createSQLQuery(statment)
                                .addEntity(Usuarios.class);
            }
            else {
            statment="SELECT * FROM usuarios u LEFT JOIN twits t ON u.idu = t.idu WHERE u.localidad LIKE :ciudad GROUP BY t.idu ORDER BY count(t.idu) desc limit 10;";
            query = s.createSQLQuery(statment)
                                .addEntity(Usuarios.class);
            query.setParameter("ciudad",'%'+ciudad+'%');
            }
            try {
                	System.err.println("filteru -->" + query.list().size());                    
                         return (ArrayList<Usuarios>)query.list();

		
		} catch (Exception ex) {
			System.err.println("Error filteru-->" + ex.getMessage());
			
			return null;
		}
  }
    
     public static ArrayList <Hashtags> getHashtags() {
          SessionFactory sf = HibernateUtil.getSessionFactory();
          Session s = sf.openSession();
          Query query;

          String statment="";
          Map auth = ActionContext.getContext().getSession();
          String ciudad=auth.get("filterh").toString();
            if(ciudad.compareToIgnoreCase("todos") == 0 | ciudad.length()==0 | ciudad == null) {
        
            statment="SELECT * FROM hashtags h LEFT JOIN hashaux ha ON h.idh = ha.idh GROUP BY ha.idh ORDER BY count(ha.idh) desc limit 10;";
            query = s.createSQLQuery(statment)
                                .addEntity(Hashtags.class);
            }
            else {
            statment="SELECT * FROM hashtags h LEFT JOIN hashaux ha ON h.idh = ha.idh WHERE  h.idu IN (SELECT idu from usuarios WHERE localidad LIKE :ciudad) GROUP BY ha.idh ORDER BY count(ha.idh) desc limit 10;";
            query = s.createSQLQuery(statment)
                                .addEntity(Hashtags.class);
            query.setParameter("ciudad",'%'+ciudad+'%');
            }
            try {
                	System.err.println("filterh -->" + query.list().size());                    
                         return (ArrayList<Hashtags>)query.list();

		
		} catch (Exception ex) {
			System.err.println("Error filterh-->" + ex.getMessage());
			
			return null;
		}
  }
}

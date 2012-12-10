package dao;

/**
 *
 * @author Franco
 */
import com.opensymphony.xwork2.ActionContext;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import model.Twits;
import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class ApiDao {

                	
	public static boolean CheckKey(String key) {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        
			 Query query = s.createQuery("FROM Usuarios t where t.apikey = :key");
     
                        
                           
                         query.setParameter("key", key);            
                         
                        if(query.list().size() >= 1) {
                            return true;
                        }
                        else {
                            return false;
                        }

		
		 	

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return false;
		}
        }
        
        public static boolean CheckAplication(String aplication) {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        
			 Query query = s.createQuery("FROM Aplicaciones where apikey = :aplication and permitido = 1");
  
                         query.setParameter("aplication", aplication);            
                         
                        if(query.list().size() >= 1) {
                            return true;
                        }
                        else {
                            return false;
                        }

		
		 	

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return false;
		}
        }

        
  public static boolean Twit(String key, String twit) {
                List<Usuarios> listaUsuarios = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Transaction t = null;
                Session s = sf.openSession();
		
                Query query = s.createQuery("FROM Usuarios u where u.apikey = :key");
                query.setParameter("key", key);
            

            listaUsuarios = query.list();
            
            if(listaUsuarios.isEmpty()) {
                return false;
            }
            else {
                
                try {
                    Twits mensaje = new Twits();                    
                        mensaje.setIdu(listaUsuarios.get(0).getIdu());
                        mensaje.setString(twit);
                        
                        Map auth = ActionContext.getContext().getSession();
                 mensaje.setIdu(((Number)auth.get("idusuario")).longValue());
                 Calendar cal = Calendar.getInstance();
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
                mensaje.setTimestam(sdf.format(cal.getTime()));
                                               
			t = s.beginTransaction(); // start a new transaction
			s.persist(mensaje);
			t.commit(); // commit transaction
			return true;
		} catch (Exception ex) {
			System.err.println("Error -->" + ex.getMessage());
			if (t != null)
				t.rollback();
			return false;
		}
            }
	}
   public static List<Twits> Timeline(String key, String offset) {
                List<Usuarios> listaUsuarios = null;
                List<Twits> listaTwits = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Transaction t = null;
                Session s = sf.openSession();
		
                Query query = s.createQuery("FROM Usuarios u where u.apikey = :key");
                
                query.setParameter("key", key);
            

            listaUsuarios = query.list();
            
            if(listaUsuarios.isEmpty()) {
                return null;
            }
            else {
                
                try {
                
                                               
			t = s.beginTransaction(); // start a new transaction
			Query query2 = s.createQuery("FROM Twits where idu = :idu or idu IN (select siguiendo from Relaciones where idusuario = :idu) order by timestam desc");
                        query2.setParameter("idu", listaUsuarios.get(0).getIdu());
                        listaTwits = query2.list();
			t.commit(); // commit transaction
			return listaTwits;
		} catch (Exception ex) {
			System.err.println("Error -->" + ex.getMessage());
			if (t != null) {
                        t.rollback();
                    }
			return null;
		}
            }
	}
}

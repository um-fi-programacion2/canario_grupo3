/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author Franco
 */
import com.opensymphony.xwork2.ActionContext;
import java.util.ArrayList;
import java.util.Map;
import model.Twits;
import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class PerfilDao {
	public static boolean saveImage(String name) {
                Transaction t = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
                Session s = sf.openSession();
                Map auth = ActionContext.getContext().getSession();
                           
		
                Query query = s.createQuery("UPDATE Usuarios set imagen = :name where idu= :idu");
                query.setParameter("name", name);
                query.setParameter("idu",((Number)auth.get("idusuario")).longValue());
               
                
                try {
                    t = s.beginTransaction();
           query.executeUpdate();
           t.commit(); // commit transaction
                return true;
		} catch (Exception ex) {
			System.err.println("Error -->" + ex.getMessage());
			if (t != null) {
                        t.rollback();
                    }
			return false;
		}
        }

public static boolean guardarPerfil(Usuarios Rgst) {
                 Transaction t = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
                Session s = sf.openSession();
                Map auth = ActionContext.getContext().getSession();
                           
		
                Query query = s.createQuery("UPDATE Usuarios set mail= :mail, bio = :bio, pass= :pass, localidad= :loc, usuario= :usuario  where idu= :id");
                //query.setParameter("nombre", Rgst.getNombre());  UPDATE Usuarios set nombre = :nombre,
                query.setParameter("mail", Rgst.getMail());
                query.setParameter("bio", Rgst.getBio());
                query.setParameter("pass", Rgst.getPass());
                query.setParameter("id",((Number)auth.get("idusuario")).longValue());
                query.setParameter("loc", Rgst.getLocalidad());
                query.setParameter("usuario", Rgst.getUsuario());
               
                
                try {
                    t = s.beginTransaction();
           query.executeUpdate();
           t.commit(); // commit transaction
                return true;
		} catch (Exception ex) {
			System.err.println("Error -->" + ex.getMessage());
		
			return false;
		}

}
 
                	
	public static Usuarios traerPerfil() {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                       
                        Session s = sf.openSession();
			
                        
			 Query query = s.createQuery("FROM Usuarios t where t.idu = :idu");
     
                         Map auth = ActionContext.getContext().getSession();
                           
                         query.setParameter("idu", ((Number)auth.get("idusuario")).longValue());            
                    

                        return (Usuarios) query.list().get(0);

		

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
		
			return null;
		}
        }

public static Usuarios traerPerfilNombre(String nombre) {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        
			 Query query = s.createQuery("FROM Usuarios t where t.nombre = :nombre");
     
                           
                         query.setParameter("nombre", nombre);            
                         
                        return (Usuarios) query.list().get(0);

		
		 	

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return null;
		}
        }

public static Usuarios traerPerfil(Long uid) {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Transaction t = null;
                        Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
                        
			 Query query = s.createQuery("FROM Usuarios t where t.idu = :idu");
                                
                         query.setParameter("idu", uid);            
                         
                        return (Usuarios) query.list().get(0);

                        
		 	

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			
			return null;
		}
        }


                
 

public static Usuarios traerPerfilPublico() {
                	
		 try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                       
                        Session s = sf.openSession();
			
                        
			 Query query = s.createQuery("FROM Usuarios t where t.idu = :idu");
     
                         Map auth = ActionContext.getContext().getSession();
                           
                         query.setParameter("idu", ((Number)auth.get("publicocontext")).longValue());            
                    

                        return (Usuarios) query.list().get(0);

		

		
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
		
			return null;
		}
        }
}
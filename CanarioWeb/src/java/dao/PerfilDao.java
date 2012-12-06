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
import java.util.Map;
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
                           
		
                Query query = s.createQuery("UPDATE Usuarios set imagen = :name where idu= :id");
                query.setParameter("name", name);
                query.setParameter("id",((Number)auth.get("idusuario")).longValue());
               
                
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
                           
		
                Query query = s.createQuery("UPDATE Usuarios set nombre = :nombre, mail= :mail, bio = :bio, pass= :pass  where idu= :id");
                query.setParameter("nombre", Rgst.getNombre());
                query.setParameter("mail", Rgst.getMail());
                query.setParameter("bio", Rgst.getBio());
                query.setParameter("pass", Rgst.getPass());
                query.setParameter("id",((Number)auth.get("idusuario")).longValue());
               
                
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

}
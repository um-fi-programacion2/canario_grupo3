/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.opensymphony.xwork2.ActionContext;
import java.util.Map;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author el pampa
 */
public class GuardarFlagsDao {
    public static boolean guardarFlagsDao(Long idu, String flag1, String flag2) {
                Transaction t = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
                Session s = sf.openSession();
                Map auth = ActionContext.getContext().getSession();
                           
		
                Query query = s.createQuery("UPDATE Usuarios set flag1 = :flag1, flag2 = :flag2 where idu= :idu");
                
                query.setParameter("idu",((Number)auth.get("idusuario")).longValue());
                query.setParameter("flag1", flag1.toString());
                query.setParameter("flag2", flag2.toString());
                
                try {
                    t = s.beginTransaction();
           query.executeUpdate();
           t.commit(); // commit transaction
                return true;
		} catch (Exception ex) {
			System.err.println("Error !-->" + ex.getMessage());
			if (t != null) {
                        t.rollback();
                    }
			return false;
		}
        }
}

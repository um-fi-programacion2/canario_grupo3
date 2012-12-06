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
import java.util.List;
import java.util.Map;
import model.Twits;
import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class TwitDao {
	public static boolean saveTwit(Twits datos) {
                SessionFactory sf = HibernateUtil.getSessionFactory();
		Transaction t = null;
                Session s = sf.openSession();
			
	
		 try {
			
			t = s.beginTransaction(); // start a new transaction
			s.persist(datos);
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

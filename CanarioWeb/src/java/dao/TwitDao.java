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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import model.Twits;
import org.apache.tomcat.jni.Time;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class TwitDao {
	public static boolean saveTwit(Twits datos) {
                SessionFactory sf = HibernateUtil.getSessionFactory();
		Transaction t = null;
                Session s = sf.openSession();
                
                 Map auth = ActionContext.getContext().getSession();
                 datos.setIdu(((Number)auth.get("idusuario")).longValue());
                 Calendar cal = Calendar.getInstance();
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
                datos.setTimestam(sdf.format(cal.getTime()));
                
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

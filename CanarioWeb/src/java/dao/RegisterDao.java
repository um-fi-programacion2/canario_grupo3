package dao;

import dao.HibernateUtil;
import model.Register;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class RegisterDao {
	public static boolean registerUser(Register Rgst) {

		SessionFactory sf = HibernateUtil.getSessionFactory();
		Transaction t = null;
		try {
			Session s = sf.openSession();
			t = s.beginTransaction(); // start a new transaction
			s.persist(Rgst);
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

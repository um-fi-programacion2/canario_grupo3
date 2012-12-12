package dao;

import dao.HibernateUtil;
import java.util.List;
import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class RegisterDao {
	public static boolean registerUser(Usuarios Rgst) {
                List<Usuarios> listaUsuarios = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Transaction t = null;
                Session s = sf.openSession();
		
                Query query = s.createQuery("FROM Usuarios u where u.mail = :mail or u.nombre = :nombre");
                query.setParameter("mail", Rgst.getMail());
                query.setParameter("nombre", Rgst.getNombre());
            

            listaUsuarios = query.list();

            
            if(!listaUsuarios.isEmpty()) {
                return false;
            }
            else {
                
                try {
			
			t = s.beginTransaction(); // start a new transaction
			s.persist(Rgst);
                                                             s.disconnect();

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
}

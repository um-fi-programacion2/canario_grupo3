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
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class LoginDao {
	public static boolean LoginUser(Usuarios datos) {
                List<Usuarios> listaUsuarios = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		
			Session s = sf.openSession();
	
			         Query query = s.createQuery("FROM Usuarios u where u.mail = :mail and u.pass = :pass");
            query.setParameter("mail", datos.getMail());
            query.setParameter("pass", datos.getPass());
            

            listaUsuarios = query.list();
            
            if(listaUsuarios.isEmpty()) {
                                                     s.disconnect();

                return false;
            }
            else {

                Usuarios usuario = new Usuarios();
                usuario=listaUsuarios.get(0);
                Map auth = ActionContext.getContext().getSession();
                auth.put("idusuario", usuario.getIdu());
                                                      s.disconnect();

                return true;
            }

  }
}

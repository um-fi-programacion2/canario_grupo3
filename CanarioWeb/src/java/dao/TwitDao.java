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
import java.util.Calendar;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.Hashaux;
import model.Hashtags;
import model.Twits;
import model.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import view.SendMail;

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
                        saveHash(datos.getString(), datos);
                        notifyMention(datos.getString(),datos);
                        s.disconnect();
			return true;
		} catch (Exception ex) {
			System.err.println("Error -->" + ex.getMessage());
			if (t != null)
				t.rollback();
			return false;
		}
  }
        public static boolean saveHash(String mensaje, Twits datos ) {
                SessionFactory sf = HibernateUtil.getSessionFactory();
		Transaction t = null;
                Session s = sf.openSession();
                
                String patternStr = "(?:\\s|\\A)[##]+([A-Za-z0-9-_]+)";
                Pattern pattern = Pattern.compile(patternStr);
                Matcher matcher = pattern.matcher(mensaje);
                String foundValue = "";
                
                while (matcher.find()){
                    foundValue = matcher.group();
                    foundValue = foundValue.replace(" ","");
                    String rawName = foundValue.replace("#","");

      
                     try {
                         
                         //Primero check si el Hashtag ya existe
                         Query query = s.createQuery("FROM Hashtags where string = :hash");
                         query.setParameter("hash", rawName);
                         if(query.list().size() == 0) { //si no existe, guardar el nuevo hash
			
                             Hashtags h= new Hashtags();
                        
                        h.setString(rawName);
                        h.setIdu(datos.getIdu());
                        
			t = s.beginTransaction(); // start a new transaction
			s.persist(h);
			t.commit(); // commit transaction

                         }
                         //Ahora guardar la referencia en la tabla auxiliar (esto siempre)
                         Hashaux ha= new Hashaux();
                         Hashtags haux = new Hashtags();

                         Query query2 = s.createQuery("FROM Hashtags where string = :hash");
                         query2.setParameter("hash", rawName);
                         haux =  (Hashtags) query2.list().get(0);
                         ha.setIdh(haux.getIdh());
                         ha.setIdt(datos.getIdt());
                        
                         t = s.beginTransaction(); // start a new transaction
                         s.persist(ha);
                         t.commit();
                         
                         
		} catch (Exception ex) {
			System.err.println("ErrorHash -->" + ex.getMessage());
			if (t != null)
				t.rollback();
			return false;
		}
    }
    s.disconnect();
    return true;
    }

 public static boolean notifyMention(String mensaje, Twits datos ) {
                
                 String patternStr = "(?:\\s|\\A)[@]+([A-Za-z0-9-_]+)";
                Pattern pattern = Pattern.compile(patternStr);
                Matcher matcher = pattern.matcher(mensaje);
                String foundValue = "";
                
                while (matcher.find()){
                    foundValue = matcher.group();
                    foundValue = foundValue.replace(" ","");
                    String rawName = foundValue.replace("@","");
      
                     try {
                         
                         //Traemos el usuario
                         Usuarios mencionado = new Usuarios();
                         mencionado = PerfilDao.traerPerfilNombre(rawName);
                      if(mencionado.getFlag1().compareTo("true") == 0) {
                      

                       SendMail correo = new SendMail(mencionado.getMail(),mencionado.getNombre(),3);  
                       Thread thread = new Thread(correo);  
                       thread.start(); 
                       }
                         
		} catch (Exception ex) {
			System.err.println("ErrorHash -->" + ex.getMessage());
			return false;
		}
    }
    return true;
    }


}

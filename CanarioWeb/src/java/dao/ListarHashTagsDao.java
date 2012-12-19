/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.Twits;
import model.Usuarios;
import model.timelineView;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author el pampa
 */
public class ListarHashTagsDao {
    
    public static ArrayList<Twits> getListaHashTags(String h){
            try {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                    
                        Session s = sf.openSession();
			//h="'"+h+"'";
                        Query query1 = s.createQuery("from Twits where idt in (select idt from Hashaux where idh in (select idh from Hashtags where string = :h))");
                        
                        query1.setParameter("h", h);
                        //query1.setParameter("h", h);
                        
                        s.disconnect();

                         return (ArrayList<Twits>)query1.list();

		
		} catch (Exception ex) {
			System.err.println("Error !p-->" + ex.getMessage());
			
			return null;
		}
    }
}
    
    

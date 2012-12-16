/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Franco
 */
public class deleteappDao {
    public static int dellApp(String idapp) {
			SessionFactory sf = HibernateUtil.getSessionFactory();
                        Session p = sf.openSession();
                        Transaction t = p.beginTransaction();
			Query query = p.createQuery("delete Aplicaciones where idaplicaciones = :idu");
                                             System.err.println("valorenDao-->" + idapp);

                        
                        query.setParameter("idu", Integer.parseInt(idapp));
                        int rows= query.executeUpdate();
                        t.commit();
                        
                         p.close();
                         			System.err.println("Columnas borradas-->" + rows);

                                                return 0;
                         
  }


}

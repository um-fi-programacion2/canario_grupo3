/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import dao.PerfilDao;
import dao.deleteappDao;

/**
 *
 * @author Franco
 */
public class DellappAction {
    String app;

    public String getApp() {
        return app;
    }

    public void setApp(String app) {
        this.app = app;
    }
    public String execute() throws Exception {
       		                         			System.err.println("idaplicaciones-->" + app);
	
        deleteappDao.dellApp(app);
        return "success";
    }
}

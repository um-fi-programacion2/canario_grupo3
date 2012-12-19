/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

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
        deleteappDao.dellApp(app);
        return "success";
    }
}

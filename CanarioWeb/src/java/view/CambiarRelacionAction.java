/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

/**
 *
 * @author Franco
 */ 
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.relacionesDao;
import java.util.Map;
 
public class CambiarRelacionAction extends ActionSupport{
 
	private String r;
        private String user;
 
	public String execute() {
                  Map auth = ActionContext.getContext().getSession();
                auth.put("publicocontext", user);
    
           
            
    if(r.equalsIgnoreCase("1")) {
            relacionesDao.unfollow(((Number)auth.get("idusuario")).longValue(), Long.parseLong(user));

    }
    else { 
            relacionesDao.follow(((Number)auth.get("idusuario")).longValue(), Long.parseLong(user));

    }
		return SUCCESS;
	}

    public String getR() {
        return r;
    }

    public void setR(String r) {
        this.r = r;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
 
}
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
        private int relacion;
        private long usuariopublico;

    public int getRelacion() {
        return relacion;
    }

    public void setRelacion(int relacion) {
        this.relacion = relacion;
    }

    public long getUsuariopublico() {
        return usuariopublico;
    }

    public void setUsuariopublico(long usuariopublico) {
        this.usuariopublico = usuariopublico;
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
    public String cambiarRelacionPublico() throws Exception{
     Map auth = ActionContext.getContext().getSession();
        
        if(relacion==1) {
            relacionesDao.unfollow(((Number)auth.get("idusuario")).longValue(), usuariopublico);

        }
        else { 
            relacionesDao.follow(((Number)auth.get("idusuario")).longValue(), usuariopublico);

            }
		return SUCCESS;
    }
}
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package api.ajax;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Franco
 */
  import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.PerfilDao;
import dao.TwitDao;
import java.util.Map;
import model.Twits;
import model.Usuarios;
 
public class checkuser extends ActionSupport{
        /*parametros*/
        private String u;
    
 
	/*salida del JSON*/
	private String message = "OK";
 
	public checkuser(){
		
	}
 
    @Override
	public String execute() {
                Usuarios ret = new Usuarios();
            ret = PerfilDao.traerPerfilNombre(u);
            if(ret==null) {
                message="OK";
            }
            else {
                message ="FAIL";
            }
            return Action.SUCCESS;
        }
        /*Parametros si no incluimos el get no se refleja en el JSON*/
 
	public void setU(String u) {
		this.u = u;
	}
 
 
 
        /*Parametros con getter son parametros de salida*/
	public String getMessage() {
		return message;
	}
 
	public void setMessage(String message) {
		this.message = message;
	}
 

  
}

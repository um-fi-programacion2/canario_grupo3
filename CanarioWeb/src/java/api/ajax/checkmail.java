/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package api.ajax;

import com.opensymphony.xwork2.Action;
import dao.PerfilDao;
import model.Usuarios;

/**
 *
 * @author Franco
 */
public class checkmail {
     /*parametros*/
        private String m;
    
 
	/*salida del JSON*/
	private String message = "OK";
 
	public checkmail(){
		
	}
 
  
	public String execute() {
                Usuarios ret = new Usuarios();
            ret = PerfilDao.checkmail(m);
            if(ret==null) {
                message="OK";
            }
            else {
                message ="FAIL";
            }
            return Action.SUCCESS;
        }
        /*Parametros si no incluimos el get no se refleja en el JSON*/
 
	public void setM(String m) {
		this.m = m;
	}
 
 
 
        /*Parametros con getter son parametros de salida*/
	public String getMessage() {
		return message;
	}
 
	public void setMessage(String message) {
		this.message = message;
	}
 

}

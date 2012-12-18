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
import dao.TwitDao;
import java.util.Map;
import model.Twits;
 
public class filterh extends ActionSupport{
        /*parametros*/
        private String h;
    
 
	/*salida del JSON*/
	private String message = "OK";
 
	public filterh(){
		
	}
 
    @Override
	public String execute() {
        Map auth = ActionContext.getContext().getSession();
        auth.put("filterh", h);
        message=h;
     return Action.SUCCESS;
        }
        /*Parametros si no incluimos el get no se refleja en el JSON*/
 
	public void setH(String h) {
		this.h = h;
	}
 
 
 
        /*Parametros con getter son parametros de salida*/
	public String getMessage() {
		return message;
	}
 
	public void setMessage(String message) {
		this.message = message;
	}
 

  
}

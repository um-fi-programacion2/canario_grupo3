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
 
public class filteru extends ActionSupport{
        /*parametros*/
        private String f;
    
 
	/*salida del JSON*/
	private String message = "OK";
 
	public filteru(){
		
	}
 
    @Override
	public String execute() {
            Map auth = ActionContext.getContext().getSession();
            auth.put("filteru", f);
            message=f;
            return Action.SUCCESS;
        }
        /*Parametros si no incluimos el get no se refleja en el JSON*/
 
	public void setF(String f) {
		this.f = f;
	}
 
 
 
        /*Parametros con getter son parametros de salida*/
	public String getMessage() {
		return message;
	}
 
	public void setMessage(String message) {
		this.message = message;
	}
 

  
}

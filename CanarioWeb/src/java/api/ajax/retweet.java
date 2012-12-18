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
import com.opensymphony.xwork2.ActionSupport;
import dao.TwitDao;
import model.Twits;
 
public class retweet extends ActionSupport{
        /*parametros*/
        private String id;
        private String nombre;
        private String twit;
    
 
	/*salida del JSON*/
	private String message = "OK";
 
	public retweet(){
		
	}
 
    @Override
	public String execute() {
        System.err.println("valores -->" + id + "-"+ twit +"-"+nombre);
        Twits taux= new Twits();
       taux=TwitDao.getTwit(Long.parseLong(twit));
        String aux= "RT @"+nombre+": \" "+ taux.getString() + "\"";
     Twits tw = new Twits();
     tw.setIdu(Long.parseLong(id));
     tw.setString(aux);
     TwitDao.saveTwit(tw);
     return Action.SUCCESS;
        }
        /*Parametros si no incluimos el get no se refleja en el JSON*/
 
	public void setId(String id) {
		this.id = id;
	}
 
	
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setTwit(String twit) {
        this.twit = twit;
    }
 
 
        /*Parametros con getter son parametros de salida*/
	public String getMessage() {
		return message;
	}
 
	public void setMessage(String message) {
		this.message = message;
	}
 

  
}

package api;

/**
 *
 * @author Franco
 */
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
 
public class Follow extends ActionSupport{
        /*parametros*/
        private String key;
        private String aplication;
        private String user;
 
	/*salida del JSON*/
	private String message = "OK";
 
	public Follow(){
		
	}
 
    @Override
	public String execute() {
       if(dao.ApiDao.CheckKey(key) == true) {
           if(dao.ApiDao.CheckAplication(aplication) == true) {
               dao.ApiDao.Follow(key, user);
           }
           else{
               message="FAIL - Aplicación no autorizada";
           }    
       }
       
       else {
           message="FAIL - Key no verificada";
       }
               return Action.SUCCESS;
        }
        /*Parametros si no incluimos el get no se refleja en el JSON*/
 
	public void setKey(String key) {
		this.key = key;
	}
 
	public void setAplication(String aplication) {
		this.aplication = aplication;
	}
 
	public void setUser(String user) {
		this.user = user;
	}
 
        /*Parametros con getter son parametros de salida*/
	public String getMessage() {
		return message;
	}
 
	public void setMessage(String message) {
		this.message = message;
	}
 

}

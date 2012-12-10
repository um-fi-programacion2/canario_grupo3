package api;

/**
 *
 * @author Franco
 */
import com.opensymphony.xwork2.Action;
import java.util.ArrayList;
import java.util.List;
import model.Twits;
 
public class Timeline{
 
	//Valores Retornados en el Json (Twits)
	List<Twits> twits = null;
         private String message = "OK";

	//Parametros (no getter method, will not include in the JSON)
        private String key;
        private String aplication;
        private String offset; //0 means newers
        
	public Timeline(){
		//lists.add("list1"
	}
 
       public String execute() {
        if(dao.ApiDao.CheckKey(key) == true) {
           if(dao.ApiDao.CheckAplication(aplication) == true) {
               twits=dao.ApiDao.Timeline(key, offset);
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

    public void setKey(String key) {
        this.key = key;
    }

    public void setAplication(String aplication) {
        this.aplication = aplication;
    }

    public void setOffset(String offset) {
        this.offset = offset;
    }

    public List<Twits> gettwits() {
        return twits;
    }

    public void settwits(List<Twits> twits) {
        this.twits = twits;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
 
}


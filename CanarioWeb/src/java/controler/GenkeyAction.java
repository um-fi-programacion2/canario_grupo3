/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.PerfilDao;
import java.util.Map;
import java.util.Random;

/**
 *
 * @author Franco
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

public class GenkeyAction extends ActionSupport{
    
   
   public String execute() throws Exception {
       			
 Map auth = ActionContext.getContext().getSession();
    //auth.get("idusuario")).longValue();
        String key = this.getAleatoria(10);
        
        if(PerfilDao.saveKey(((Number)auth.get("idusuario")).longValue(), key)){
            return "success";
        }
            
        else{
        return "fail";
        }
    }
    String getAleatoria (int longitud){
String cadenaAleatoria = "";
long milis = new java.util.GregorianCalendar().getTimeInMillis();
Random r = new Random(milis);
int i = 0;
while ( i < longitud){
char c = (char)r.nextInt(255);
if ( (c >= '0' && c <='9') || (c >='A' && c <='Z') ){
cadenaAleatoria += c;
i ++;
}
}
return cadenaAleatoria;
}
}


/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import com.opensymphony.xwork2.ActionSupport;
import dao.GuardarFlagsDao;
import dao.PerfilDao;
import java.util.Random;

/**
 *
 * @author Franco
 */
public class AddappAction extends ActionSupport{
    private String nombre;

    public AddappAction() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
   
   public String execute() throws Exception {
       			

        if(PerfilDao.saveApp(nombre,this.getAleatoria(6) )){
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

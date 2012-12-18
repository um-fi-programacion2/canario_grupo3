/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import com.opensymphony.xwork2.ActionContext;
import java.util.Map;

/**
 *
 * @author el pampa
 */
public class HomeAction {
    public String execute() throws Exception {
         Map auth1 = ActionContext.getContext().getSession();
     if(!auth1.isEmpty()){
         return "success";
     }else{
         return "empty";
     }
     
    }
    
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import com.opensymphony.xwork2.ActionSupport;
import dao.GuardarFlagsDao;
import model.Usuarios;

/**
 *
 * @author el pampa
 */
public class GuardarFlagsAction extends ActionSupport{
    private String flag1;
    private String flag2;
    private Long idu;

    public GuardarFlagsAction() {
    }
    
    public Long getIdu() {
        return idu;
    }

    public void setIdu(Long idu) {
        this.idu = idu;
    }

    public String getFlag1() {
        return flag1;
    }

    public void setFlag1(String flag1) {
        this.flag1 = flag1;
    }

    public String getFlag2() {
        return flag2;
    }

    public void setFlag2(String flag2) {
        this.flag2 = flag2;
    }
    
   
   public String execute() throws Exception {
       			

        if(GuardarFlagsDao.guardarFlagsDao(idu, flag1,flag2)){
            return "success";
        }
            
        else{
        return "fail";
        }
    }
    
}

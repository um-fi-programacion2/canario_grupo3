package view;

import com.opensymphony.xwork2.ActionContext;
import dao.ListarTwitsDao;
import dao.TopDao;
import java.util.ArrayList;
import java.util.Map;
import model.Twits;
import model.Usuarios;
import model.timelineView;

/**
 *
 * @author Franco
 */
public class Top10usuarios {
    
    public ArrayList <Usuarios> listaTopUsuarios = new ArrayList<Usuarios>();

    
    
     public String execute() throws Exception {
    
       listaTopUsuarios = TopDao.getUsers();
       
         
    return "fin";
    }

     /*GET AND SET*/

    public ArrayList<Usuarios> getListaTopUsuarios() {
        return listaTopUsuarios;
    }

    public void setListaTopUsuarios(ArrayList<Usuarios> listaTopUsuarios) {
        this.listaTopUsuarios = listaTopUsuarios;
    }


}


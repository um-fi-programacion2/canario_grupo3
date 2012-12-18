package controler;

import dao.TopDao;
import java.util.ArrayList;
import model.Hashtags;
import model.Usuarios;

/**
 *
 * @author Franco
 */
public class Top10Hashtags {
    
    public ArrayList <Hashtags> listaTopHashtags = new ArrayList<Hashtags>();

    
    
     public String execute() throws Exception {
    
       listaTopHashtags = TopDao.getHashtags();
       
         
    return "fin";
    }

     /*GET AND SET*/

    public ArrayList<Hashtags> getListaTopUsuarios() {
        return listaTopHashtags;
    }

    public void setListaTopUsuarios(ArrayList<Hashtags> listaTopHashtags) {
        this.listaTopHashtags = listaTopHashtags;
    }


}


/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

/**
 *
 * @author el pampa
 */
/*
 * Clase que llama a la funcion de seguir a un usuario en el action: ListarFollowers!!!!
 * 
*/
public class UnFollowAction {
    private String idusuario;
    private String idseguidor;
    private String relacion;

    public UnFollowAction() {
    }

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getIdseguidor() {
        return idseguidor;
    }

    public void setIdseguidor(String idseguidor) {
        this.idseguidor = idseguidor;
    }

    public String getRelacion() {
        return relacion;
    }

    public void setRelacion(String relacion) {
        this.relacion = relacion;
    }

        public String execute() throws Exception{
            if(relacion.equalsIgnoreCase("1")){
                dao.relacionesDao.unfollow(Long.parseLong(idusuario), Long.parseLong(idseguidor));
                
            return "bien";
            }else{
            return "fail";
            }
                
            

        }


}

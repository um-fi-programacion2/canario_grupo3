package view;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.PerfilDao;
import dao.RegisterDao;
import dao.relacionesDao;
import java.util.Map;
import model.Usuarios;



public class publicoAction extends ActionSupport {
	private String u;
        private Usuarios reg = new Usuarios();
        int followers;
        int following;
        int countTwits;
        int relacion;

public publicoAction() {
}

    public String execute() throws Exception {

reg= PerfilDao.traerPerfilNombre(u);
if (reg != null) {
    followers = relacionesDao.countFollowers(reg.getIdu());
    following = relacionesDao.countFollowing(reg.getIdu());
    countTwits = relacionesDao.countTwits(reg.getIdu());
        Map auth = ActionContext.getContext().getSession();

    if(((Number)auth.get("idusuario")).longValue() != reg.getIdu()) {
     
    relacion = relacionesDao.checkRelacion(((Number)auth.get("idusuario")).longValue(),reg.getIdu());
    }
    else {
        relacion = 2;
    }
    System.err.println("Debug-->" + relacion);

            return "success";
        }
else {
            return "fail";
        }
}

    public String getU() {
        return u;
    }

    public void setU(String u) {
        this.u = u;
    }

    public Usuarios getReg() {
        return reg;
    }

    public void setReg(Usuarios reg) {
        this.reg = reg;
    }

    public int getFollowers() {
        return followers;
    }

    public void setFollowers(int followers) {
        this.followers = followers;
    }

    public int getFollowing() {
        return following;
    }

    public void setFollowing(int following) {
        this.following = following;
    }

    public int getCountTwits() {
        return countTwits;
    }

    public void setCountTwits(int countTwits) {
        this.countTwits = countTwits;
    }

    public int isRelacion() {
        return relacion;
    }

    public void setRelacion(int relacion) {
        this.relacion = relacion;
    }




}
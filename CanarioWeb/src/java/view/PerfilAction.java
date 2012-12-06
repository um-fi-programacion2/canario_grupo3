/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

/**
 *
 * @author Franco
 */
import com.opensymphony.xwork2.ActionSupport;
import dao.PerfilDao;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import model.Usuarios;


public class PerfilAction extends ActionSupport {
private Long idu;
    private String nombre;
private String bio;
private String mail;
private String pass;

public PerfilAction() {
}
@Id
@GeneratedValue
@Column(name = "idu")
public Long getIdu() {
return this.idu;
}

public void setIdu(Long idu) {
this.idu = idu;
}
@Column (name = "nombre")
public String getNombre() {
return this.nombre;
}

public void setNombre(String nombre) {
this.nombre = nombre;
}
@Column (name="bio")
public String getBio() {
return this.bio;
}

public void setBio(String bio) {
this.bio = bio;
}

@Column (name="email")
public String getMail() {
return this.mail;
}

public void setMail(String mail) {
this.mail = mail;
}
@Column (name ="pass")
public String getPass() {
return this.pass;
}

public void setPass(String pass) {
this.pass = pass;
}

    public String execute() throws Exception {
Usuarios reg = new Usuarios();
reg.setIdu(idu);
reg.setBio(bio);
reg.setMail(mail);
reg.setNombre(nombre);
reg.setPass(pass);

if (PerfilDao.guardarPerfil(reg))
return "success";
else
return "fail";
}
}

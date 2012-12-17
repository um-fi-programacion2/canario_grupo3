package view;
import com.opensymphony.xwork2.ActionSupport;
import dao.ListarTwitsDao;
import dao.LoginDao;
import dao.RegisterDao;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import model.Usuarios;




public class LoginAction extends ActionSupport {
private Long idu;
private String nombre;
private String bio="hola que tal";
private java.util.Date date;
private String mail;
private String pass;
private String imagen="imagen";
public LoginAction() {
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
@Column (name="date")
public java.util.Date getDate() {
return this.date;
}

public void setDate(java.util.Date date) {
this.date = date;
}
@Column (name="mail")
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
@Column (name= "imagen")
public String getImagen() {
return this.imagen;
}

public void setImagen(String imagen) {
this.imagen = imagen;
}
public String execute() throws Exception {
Usuarios reg = new Usuarios();
reg.setBio(bio);
reg.setDate(date);
reg.setIdu(idu);
reg.setMail(mail);
reg.setNombre(nombre);
reg.setPass(pass);
reg.setImagen(imagen);
if (LoginDao.LoginUser(reg)) {
return "success";
}
else
return "fail";
}
}
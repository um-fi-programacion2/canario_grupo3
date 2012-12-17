/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

/**
 *
 * @author Franco
 */
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
public final class SendMail implements Runnable{
    String mail;
    String nombre;
    Integer tipo;
    
    public SendMail(String mail, String nombre, Integer tipo) {
        this.setMail(mail);
        this.setNombre(nombre);
        this.setTipo(tipo);
    }
    public void run() {  
      SendMail.SendNotification(mail,nombre,tipo);  
}  
	public static void SendNotification(String mail, String nombre,Integer tipo) {
 
		final String username = "notificaciones.canarioweb@gmail.com";
		final String password = "nanopico4321";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("notificaciones@canarioweb.com.ar"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(mail));
			
                        if(tipo == 1) {
                        message.setSubject("Bienvenido:Canarioweb   ");
			message.setText("Estimado/a "+nombre +":,"
				+ "\n\n Bienvenido a CanarioWeb, esperamos que sea de su agrado.");
                        }
                          if(tipo == 2) {
                        message.setSubject("Alerta:Canarioweb");
			message.setText("Estimado/a "+nombre +":,"
				+ "\n\n Tiene un nuevo seguidor!");
                        }
                            if(tipo == 3) {
                        message.setSubject("Alerta:Canarioweb   ");
			message.setText("Estimado/a "+nombre +":,"
				+ "\n\n Fué mencionado en un tweet de CanarioWeb.");
                        }
                            
			Transport.send(message);
 
			System.out.println("Done");
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

/*Getter y Setter*/

    public String getMail() {
        return mail;
    }

    public final void setMail(String mail) {
        this.mail = mail;
    }

    public String getNombre() {
        return nombre;
    }

    public final void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getTipo() {
        return tipo;
    }

    public void setTipo(Integer tipo) {
        this.tipo = tipo;
    }

} //Fin sendMail

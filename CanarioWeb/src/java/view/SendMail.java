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
 
public class SendMail implements Runnable{
 public void run() {  
      this.SendNotification();  
}  
	public static void SendNotification() {
 
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
			message.setFrom(new InternetAddress("notificaciones.canarioweb@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("poguijuaz@gmail.com"));
			message.setSubject("Alerta:Canarioweb   ");
			message.setText("Querido usuario de Canario:,"
				+ "\n\n Tiene una nueva notificación en la web.");
 
			Transport.send(message);
 
			System.out.println("Done");
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}

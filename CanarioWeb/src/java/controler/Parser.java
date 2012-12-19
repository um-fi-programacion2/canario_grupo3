package controler;

import dao.PerfilDao;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletContext;
import javax.servlet.jsp.PageContext;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Franco
 */
public class Parser {
    
    public static String parseTweet(String inTweet){
    //hash tags
    String patternStr = "(?:\\s|\\A)[##]+([A-Za-z0-9-_]+)";
    Pattern pattern = Pattern.compile(patternStr);
    Matcher matcher = pattern.matcher(inTweet);
    String foundValue = "";
    while (matcher.find()){
      foundValue = matcher.group();
      foundValue = foundValue.replace(" ","");
      String rawValue = foundValue.replace("#","");
      			System.err.println("Hash -->" +rawValue);

      inTweet = inTweet.replace(foundValue, "<a href='./hashtag?h=" + rawValue + "'>" + foundValue + "</a>");
    }
 
    //Users
    patternStr = "(?:\\s|\\A)[@]+([A-Za-z0-9-_]+)";
    pattern = Pattern.compile(patternStr);
    matcher = pattern.matcher(inTweet);
    while (matcher.find()){
      foundValue = matcher.group();
      foundValue = foundValue.replace(" ","");
      String rawName = foundValue.replace("@","");
      if(PerfilDao.traerPerfilNombre(rawName) != null) {
      inTweet = inTweet.replace(foundValue, "<a href='./publico?u=" + rawName + "'>" + foundValue + "</a>");
      }
      }
 
    //links
    patternStr = "(^|[ \t\r\n])((ftp|http|https|mailto|aim|webcal|skype):(([A-Za-z0-9$_.+!*(),;/?:@&~=-])|%[A-Fa-f0-9]{2}){2,}(#([a-zA-Z0-9][a-zA-Z0-9$_.+!*(),;/?:@&~=%-]*))?([A-Za-z0-9$_+!*();/?:~-]))";
    pattern = Pattern.compile(patternStr);
    matcher = pattern.matcher(inTweet);
    while (matcher.find()){
      foundValue = matcher.group();
      foundValue = foundValue.replace(" ","");
      inTweet = inTweet.replace(foundValue, "<a href='" + foundValue + "' target='_blank'>" + foundValue + "</a>");
    }
    return inTweet;
  }
 
}

package view;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
      inTweet = inTweet.replace(foundValue, "<a href='http://localhost:8084/hashtag?h=" + foundValue + "'>" + foundValue + "</a>");
    }
 
    //Users
    patternStr = "(?:\\s|\\A)[@]+([A-Za-z0-9-_]+)";
    pattern = Pattern.compile(patternStr);
    matcher = pattern.matcher(inTweet);
    while (matcher.find()){
      foundValue = matcher.group();
      foundValue = foundValue.replace(" ","");
      String rawName = foundValue.replace("@","");
      inTweet = inTweet.replace(foundValue, "<a href='http://localhost:8084/publico?u=" + rawName + "'>" + foundValue + "</a>");
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

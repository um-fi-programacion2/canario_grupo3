<%-- 
    Document   : topUsuarios
    Created on : 13/12/2012, 16:16:14
    Author     : Franco
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 


    <s:iterator value="listaTopHashtags">
   
    <a href='./hashtag?h=<s:property value="string" />'> #<s:property value="string" /></a><br>
    

    
      </s:iterator>

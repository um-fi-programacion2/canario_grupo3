<%-- 
    Document   : topUsuarios
    Created on : 13/12/2012, 16:16:14
    Author     : Franco
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 


    <s:iterator value="listaTopUsuarios">
   
    <a href='./publico?u=<s:property value="nombre" />'> @ <s:property value="nombre" /></a><br>
    

    
      </s:iterator>

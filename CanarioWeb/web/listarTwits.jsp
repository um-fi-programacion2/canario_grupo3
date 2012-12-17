<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 

<table class="table table-hover">
    <thead><strong>Tweets</strong></thead> 
    <tbody> 
      
    <s:iterator value="listaTabla">
        
        <s:if test="idu != idsesion"> 
       <tr>
           <td><img src="./img/users/<s:property value="imagen" />" class="img-rounded" style="width: 80px; height: 45px;"></td><td> <a href="http://localhost:8084/publico?u=<s:property value="nombre"/>">@<s:property value="nombre" /> </a><s:property escapeHtml="false" value="string" /></td>
           <td><h6><s:property value="timestam" /></h6></td>
        
        </tr>
        </s:if>
        <s:if test="idu == idsesion"> 
       <tr>
           <td> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" style="width: 80px; height: 45px;"> <td><a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /> </a><br> <s:property value="string" escapeHtml="false" /></td>

        <td><br><h6><s:property value="timestam" /></h6></td>
        <td>
             
        </td>       
        </tr>
        </s:if>
    
      </s:iterator>
     </tbody>
</table>  
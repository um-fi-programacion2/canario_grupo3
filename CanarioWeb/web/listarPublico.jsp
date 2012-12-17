<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 


<table class="table table-hover">
    <thead>Tweets</thead> 
    <tbody> 
    <s:iterator value="listaTabla">
   
       <tr>
           <td><img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"></td><td> <a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /> </a><br><s:property escapeHtml="false" value="string" /></td>

       
         <td>
            <s:form action="retweet" method="post">
               
                <s:hidden name="nombre" value="%{nombre}"/>
                <s:hidden name="string" value="%{string}"/>
                <s:submit cssClass="badge badge-info" type="button" title="retweet"><i class="icon-retweet icon-white"></i></s:submit>
                </s:form>
            </td>   
    </tr>
    
      </s:iterator>
     </tbody>
</table>  
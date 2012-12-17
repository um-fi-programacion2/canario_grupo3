<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 

<table class="table table-hover">
    <thead><strong>Tweets</strong></thead> 
    <tbody> 
      
    <s:iterator value="listaTabla">
        
        <s:if test="idu != idsesion"> 
       <tr>
           <td><img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"></td><td> <a href="http://localhost:8084/publico?u=<s:property value="nombre"/>">@<s:property value="nombre" /> </a> <strong>dijo:</strong><br><s:property escapeHtml="false" value="string" /></td>
        <td><h6><s:property value="timestam" /><h6></td>
        <td>
            <s:form action="retweet" method="post">
               
                <s:hidden name="nombre" value="%{nombre}"/>
                <s:hidden name="string" value="%{string}"/>
<<<<<<< .mine
                <s:submit cssClass="badge badge-info" type="button" title="retweet"><i class="icon-retweet icon-white"></i></s:submit>


=======

                <s:submit cssClass="badge badge-info" type="button" title="retweet"><i class="icon-retweet icon-white"></i></s:submit>

>>>>>>> .theirs
                </s:form>
            </td>       
        </tr>
        </s:if>
        <s:if test="idu == idsesion"> 
       <tr>
           <td> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <td><a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /> </a><strong>dijo:</strong><br> <s:property value="string" escapeHtml="false" /></td>

        <td><h6><s:property value="timestam" /><h6></td>
        <td>
             
        </td>       
        </tr>
        </s:if>
    
      </s:iterator>
     </tbody>
</table>  
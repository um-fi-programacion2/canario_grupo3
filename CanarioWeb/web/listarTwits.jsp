<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 

<table class="table table-hover">
    <thead>Tweets</thead> 
    <tbody> 
      
    <s:iterator value="listaTabla">
        
        
            
       <tr>

           <td><h6> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /> </a><strong>dijo:</strong> <s:property value="string" /></h6></td>
                

           <td><h6> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /> </a><strong>dijo:</strong> <s:property escapeHtml="false" value="string" /></h6></td>


        <td><h6><s:property value="timestam" /></h6></td>
        <td>
            
                <s:submit cssClass="btn btn-danger" type="button"><i class="icon-retweet"></i></s:submit>
            
        </td>
       
        
    </tr>
    
      </s:iterator>
     </tbody>
</table>  
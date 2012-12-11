<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 


<table class="table table-hover">
     <tbody>
    <s:iterator value="listaTabla">
   
       <tr>
           <td><h6> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <a href="http://localhost:8084/publico.jsp">@<s:property value="nombre" /> </a><strong>dijo:</strong> <s:property value="string" /></h6></td>
        <td><h6><s:property value="timestam" /></h6></td>
    </tr>
    
      </s:iterator>
     </tbody>
</table>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 


<table class="table table-hover">
     <tbody>
    <s:iterator value="listaTabla">
   
       <tr>
<<<<<<< HEAD
           <td><h6> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <a href="http://localhost:8084/publico.jsp">@<s:property value="nombre" /> </a><strong>dijo:</strong> <s:property value="string" /></h6></td>
=======
           <td> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /> </a><strong>dijo:</strong> <s:property value="string" /></td>
>>>>>>> c471e81daac8d5adbf26ef3303795ea6e565cc9b
        <td><h6><s:property value="timestam" /></h6></td>
    </tr>
    
      </s:iterator>
     </tbody>
</table>  
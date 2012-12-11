<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 


<table class="table table-hover">
  <s:iterator value="listaTabla">

       <tr>
           <td> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /> </a><strong>dijo:</strong> <s:property value="string" /></td>
        <td><h6><s:property value="timestam" /></h6></td>
    </tr>
      </s:iterator>
</table>  
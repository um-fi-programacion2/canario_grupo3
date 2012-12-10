<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 

<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Ejemplos con Struts 2</title>
  </head>
  <body>
<table class="table table-hover">
  <s:iterator value="listaTwits">

       <tr>
        <td><s:property value="string" /></td>
        <td><h6><s:property value="timestam" /></h6></td>
    </tr>
      </s:iterator>
</table>  
</body>
</html>
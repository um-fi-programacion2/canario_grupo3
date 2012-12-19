<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 


<table class="table table-hover">
    <thead>Tweets</thead> 
    <tbody> 
    <s:iterator value="listaTabla">
   
       <tr>
           <td><img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30px"></td><td> <s:property value="relacion"/><a href="./publico?u=<s:property value="nombre" />">@<s:property value="nombre" /> </a><strong>dijo:</strong><br><s:property escapeHtml="false" value="string" /></td>
        <td><h6><s:property value="timestam" /></h6></td>

       
         <td>
             <s:if test="idu != idsesion"> 
            <button id="retweet"  Class="badge badge-info"  style="margin-right: 40px; width: 30px" onclick="rt('<s:property value="idsesion"/>','<s:property value="nombre"/>',<s:property value="idt"/>)"><i class="icon-retweet icon-white" ></i> </button>
                 </s:if>
            </td>   
    </tr>
    
      </s:iterator>
     </tbody>
</table>  
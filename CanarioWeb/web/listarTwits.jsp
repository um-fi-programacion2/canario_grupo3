<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 

<table class="table table-hover">
    <thead><strong>Tweets</strong></thead> 
    <tbody> 
      
    <s:iterator value="listaTabla">
        
        <s:if test="idu != idsesion"> 
       <tr>
           <td><img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="35px"></td><td> <a href="./publico?u=<s:property value="nombre"/>">@<s:property value="nombre" /> </a> <strong>dijo:</strong><br><s:property escapeHtml="false" value="string" /></td>
        <td><h6><s:property value="timestam" /><h6></td>
        <td>
            <button id="retweet"  Class="badge badge-info"  style="margin-right: 40px; width: 30px" onclick="rt('<s:property value="idu"/>','<s:property value="nombre"/>',<s:property value="idt"/>)"><i class="icon-retweet icon-white" ></i> </button>
            </td>       

        </tr>
        </s:if>
        <s:if test="idu == idsesion"> 
       <tr>

           <td> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="35px"> <td><a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /> </a><strong>dijo:</strong><br> <s:property value="string" escapeHtml="false" /></td>

        <td><h6><s:property value="timestam" /></h6></td>

        <td>
             
        </td>       
        </tr>
        </s:if>
    
      </s:iterator>
     </tbody>
</table>  

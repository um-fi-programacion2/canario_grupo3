<%-- 
    Document   : api
    Created on : 08/12/2012, 18:04:12
    Author     : Franco
--%>

<%@include file="header.jsp"%>
<div class="row-fluid">
          <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
               <li class="nav-header">Usuario:</li>
              <li align="center"><img class="img-polaroid" src="./img/users/<%= u.getImagen() %>"  width="150" height="310"> </li>
              <li class="nav-header">Biografia:</li>
              <li align="center"><%= u.getBio() %></li>
              <li class="divider"></li>
              <li class="nav-header">Ubicacion:</li>
              <li><%= u.getLocalidad() %></li>
              
              <li class="divider"></li>
              <li class="nav-header">Información:</li>
              Followers:<a href="<s:url action="listarFollowers"/>"><strong><%= relacionesDao.countFollowers(u.getIdu()) %></strong></a><br>
              Following:<a href="<s:url action="listarFollowings"/>"><strong><%= relacionesDao.countFollowing(u.getIdu()) %></strong></a><br>
              Twits: <strong><%= relacionesDao.countTwits(u.getIdu()) %></strong>
   
             
       
        
        
        </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span5">
          <div class="well">

               <div class="well">
                   <li class="nav-header">JSON Webservices</li>
                   <h6>Enviar un tweet:<h6>
                   <code>/api/<strong>twit</strong>?key=[key]&aplication=[app]&twit=[msj]</code><br>
                   <h6>Traer mensajes:<h6>
                   <code>/api/<strong>timeline</strong>?key=[key]&aplication=[app]&offset=[oset]</code><br>
                   <h6>Traer relaciones:<h6>
                   <code>/api/<strong>friends</strong>?key=[key]&aplication=[app]&type=[tipo]</code><br>
                   <h6>Seguir a un usuario:<h6>
                   <code>/api/<strong>follow</strong>?key=[key]&aplication=[app]&user=[nombre]</code><br>
                   <h6>Dejar de seguir a un usuario:<h6>
                   <code>/api/<strong>unfollow</strong>?key=[key]&aplication=[app]&user=[nombre]</code><br>
</div>
              <div class="well">
                   <li class="nav-header">Referencias</li>
                   <table>
                   <tr><td><code>[key]</code> </td><td>Llave para identificar al usuario en el WS</td></tr>
                   <tr><td><code>[app]</code> </td><td>Llave de aplicación autorizada a usar el WS</td></tr>
                   <tr><td><code>[msj]</code> </td><td>String de tweet que quieras enviar</td></tr>
                   <tr><td><code>[oset]</code> </td><td>Omite los primeros [oset] valores de la lista</td></tr>
                   <tr><td><code>[tipo]</code> </td><td>Tipo "1" trae followers, tipo "2" trae following</td></tr>
                   <tr><td><code>[nombre]</code> </td><td>Espesifica el usuario al que seguir/dejar</td></tr>
                   </table>
              </div>
               
          <div class="row-fluid">
            </div>
          </div><!--/row-->
        </div><!--/span-->
        <div class="span4">
                  
            
                  <div class="well">
                        <div class="well">
            <li class="nav-header">Llave de indentificación</li>
            <s:form action="genKey" method="post">         
                <div class="alert"> <strong>Tu key es:</strong> <s:property value="config.apikey"/> </div> 
                        <s:submit cssClass="btn" value="Generar"  />
            </s:form>
          </div>
                      <div class="well">
                          <li class="nav-header">Autorización de aplicaciones</li>
                         
                          <table class="table table-condensed">
    <tbody> 
        <tr><td><strong>Nombre</strong></td><td><strong>Key</strong></td><td><strong>Borrar</strong></td></tr>
    <s:iterator value="listaApp">
   
       <tr>
           <td><s:property value="nombre" /> </td><td> <s:property escapeHtml="false" value="apikey" /></td>

         <td>
            <s:form action="dellapp" method="post">
               
                <s:hidden name="app" value= "%{idaplicaciones}"/>
                <s:submit cssClass="btn btn-mini btn-danger" type="button"><i class=" icon-remove icon-white"></i></s:submit>
                </s:form>
            </td>   
    </tr>
    
      </s:iterator>
     </tbody>
</table>  
                          <s:form cssClass="form-inline" action="addapp" method="post">
                            <s:textfield label="Nombre" name="nombre" cssClass="input-small" placeholder="Nombre"/>
                            <s:submit cssClass="btn" value="Autorizar" type="button"/>
                        </s:form>
                          </div>
                  </div> 
                
               </div><!--/span-->
      </div><!--/row-->

      
      
      
      
<%@include file="footer.jsp"%>

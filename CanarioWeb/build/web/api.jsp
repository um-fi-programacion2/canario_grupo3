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
   
              <li class="nav-header">Enviar un tweet</li>
              <s:form action="sendtwit" id="prueba">
                    <s:textarea id="strings" cssClass="texto"  name="strings"  maxlength="200" placeholder="canarear!!!"></s:textarea> 
            <s:submit cssClass="btn btn-warning" value="enviar"></s:submit> 
            </s:form>
              <div id="caracteres"></div>
       
        
        
        </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span6">
          <div class="well">
            <s:form cssClass="form-inline" action="genKey" method="post">         
                        <div class="alert"> <strong>Tu key es:</strong> 334ffdaadt7654dssd
                        <s:submit cssClass="btn" value="Generar" align="right" />
                        </div> 

                        
            </s:form>

          </div>
          <div class="row-fluid">
            
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

      
      
      
      
<%@include file="footer.jsp"%>

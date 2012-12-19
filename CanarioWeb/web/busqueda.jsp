<%@include file="header.jsp"%>
<div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav" >
            <ul class="nav nav-list">
              <li class="nav-header">Usuario: <strong><a href="./publico?u=<%= u.getNombre() %>"><%= u.getUsuario() %></a></strong> </li>
              
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
        <div class="span6">
            <div class="well">
                
            <strong><h2>Resultados de la Busqueda:</h2></strong>
              
              
              
           
            <div class="well">
                <h4><strong>  Nombres de Usuarios:</strong></h4><br>
              
                    <s:if test="valoru==2">
                               <h6>No se Encontraron Usuarios</h6>
                           </s:if>  
                    <s:iterator value="nombresUsuarios">
                           <br>
                           
                           <s:if test="valoru==1">
                           <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> 
                           <a href="./publico?u=<s:property value="nombre" />">@<s:property value="nombre" /></a>
                           </s:if>
                           
                        </s:iterator>
            </div>
            <div class="well">
                <h4><strong>Temas:</strong></h4><br>
              
                            <s:if test="valorh==2">
                               <h6>No se Encontraron Temas</h6>
                           </s:if>
                
                            <s:iterator value="temasUsuarios">
                           <br>
                           
                           <s:if test="valorh==1">
                               <a href="./hashtag?h=<s:property value="string"/>">#<s:property value="string" /></a>
                           </s:if>
                         
                        </s:iterator>
               </div>         
            <div class="well">
                <strong><h4>Comentarios:</h4></strong><br>
            
                            <s:if test="valort==2">
                               <h6>No se Encontraron Comentarios</h6>
                                </s:if>
                           
                               <s:iterator value="listaTabla">
                          <br>
                           
                        <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30">
                        <a href="./publico?u=<s:property value="nombre"/>">@<s:property value="nombre" /> </a>
                        <strong>dijo:</strong> <s:property escapeHtml="false" value="string" />
                        
                           
                        </s:iterator>
                </div>       
                  
              
          </div>
         </div><!--/span-->               
               
      </div><!--/row-->

<%@include file="footer.jsp"%>
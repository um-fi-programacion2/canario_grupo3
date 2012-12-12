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
               Followers:<a href="<s:url action="listarFollowers"/>"><strong><%= relacionesDao.countFollowers(u.getIdu()) %></strong></a><div class="divider"></div>
              Following:<a href="<s:url action="listarFollowings"/>"><strong><%= relacionesDao.countFollowing(u.getIdu()) %></strong></a><div class="divider"></div>
              Twits: <a href="#"><strong><%= relacionesDao.countTwits(u.getIdu()) %></strong></a>
   
        <!--      <li class="nav-header">Enviar un tweet</li>
              <s:form action="twit">
                    <s:textarea cols="40" rows="5" name="string" maxlength="150" placeholder="canarear!!!"></s:textarea> 
            <s:submit cssClass="btn btn-warning" value="enviar"></s:submit> 
            </s:form>
        -->
        
        
        </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span6">
          <div class="hero-unit">
            <s:form cssClass="form-inline" action="genKey" method="post">         
                        <s:textfield cssClass="input-xlarge uneditable-input" label="Nombre" name="nombre" placeholder="asas223234rg22" />
                        <s:submit cssClass="btn" value="Generar" align="right" />
            </s:form>
<div class="alert">
    <strong>Warning!</strong> Best check yo self, you're not looking too good.
</div>
          </div>
          <div class="row-fluid">
            
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

      
      
      
      
<%@include file="footer.jsp"%>

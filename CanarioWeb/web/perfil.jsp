<%@include file="header.jsp"%>
<div class="row-fluid">
          <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
                <li class="nav-header">Usuario: <strong><a href="http://localhost:8084/publico?u=<%= u.getNombre() %>"><%= u.getUsuario() %></a></strong> </li>
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
             
            <s:form cssClass="well well-small" action="userImage" method="post" enctype="multipart/form-data">
                 <li class="nav-header">Imagen de perfil</li> 
                 <s:file name="userImage" label="Imagen de Perfil"/>    <s:submit cssClass="btn" value="Subir" align="right" />
            </s:form>


            <s:form cssClass="well" action="GuardarPerfil" method="post">
               <li class="nav-header">Nombre y Apellido</li>
                 <s:textfield label="Usuario" name="usuario" value="%{config.usuario}"/><br>    
            <li class="nav-header">Nombre de Usuario</li>
            <s:textfield label="Nombre" name="nombre" value="%{config.nombre}"/><br> 
            <li class="nav-header">Email</li>
                <s:textfield label="Email" name="mail" value="%{config.mail}"/><br>
            <li class="nav-header">Password</li>
            <s:password label="Password" name="pass" key="%{config.pass}"/><br>
            </li><li class="nav-header">Localidad</li>
                <s:textfield label="Localidad" name="localidad" id="localidad" value="%{config.localidad}"/><br>
            <li class="nav-header">Biografia</li>
                <s:textarea label="Bio"  cols="40" rows="5" name="bio" maxlength="300" value="%{config.bio}"></s:textarea> <br>

                                 <s:submit cssClass="btn" value="Guardar Cambios"/>
             </s:form> 
             
                <s:form cssClass="well well-small"  action="guardarFlags" method="post">   
                     <li class="nav-header">Recibir Notificaciones por correo electronico cuando:</li>
                     <table>
                     <tr><td><s:checkbox name='flag1' value="%{config.flag1}"> </s:checkbox></td><td> &nbsp Un usuario me sigue</td></tr>
                     <tr><td><s:checkbox name='flag2' value="%{config.flag2}"></s:checkbox></td><td>&nbsp Cuando me mencionan en un Tweet </td></tr>
                    <s:hidden name="idu" value="%{config.idu}"/> 
                    </table>
                    <s:submit cssClass="btn" value="Guardar"/>
                </s:form>    
        </div>
          <div class="row-fluid">
            
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

      
      
      
      <script type="text/javascript" src="./js/jquery.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            var alCities = ['Capital (Mendoza)', 'General Alvear', 'Godoy Cruz', 'Guaymallen', 'Junin', 'La Paz', 'Las Heras', 'Lavalle', 'Lujan de Cuyo', 'Maipu', 'Malargue', 'Rivadavia', 'San Carllos', 'San Martin','San Rafael','Santa Rosa','Tunuyan','Tupungato'].sort();
            $('#localidad').typeahead({source: alCities, items:5});
        });
    </script>
 <%@include file="footer.jsp"%>

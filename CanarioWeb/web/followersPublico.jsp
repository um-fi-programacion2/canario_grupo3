<%@include file="header.jsp"%>
<div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
                <li class="nav-header">Usuario: <strong><a href="http://localhost:8084/publico?u=<s:property value="reg.nombre"/>"><s:property value="reg.usuario"/></a></strong></li>
              <img src="./img/users/<s:property value="reg.imagen"/>"  width="150" height="310"> 
              <s:form action="changeFollowStateInFollowers" method="post">
                  <s:hidden name="usuariopublico" value="%{reg.idu}" />
                  <s:hidden name="relacion" value="%{relacion}" />
                    
                  <s:if test="relacion == 0"> 
                      
                 <s:submit cssClass="btn btn-success" value="Seguir"/>
                 </s:if>
               <s:if test="relacion == 1"> 
                 <s:submit cssClass="btn btn-success" value="Dejar de Seguir"/>
                 </s:if>
                  
                 
              </s:form> 
             
              
            
             <li class="nav-header">Biografia:</li>
             <li align="center"><s:property value="reg.bio"/></li>
              <li class="divider"></li>
              <li class="nav-header">Ubicacion:</li>
              <li><s:property value="reg.localidad"/></li>
              
              <li class="divider"></li>

              <li class="nav-header">Información:</li>
              Followers:<strong><a href="<s:url action="listarFollowersPublico"/>"><s:property value="followers"/></a></strong></li>
              Following:<strong><a href="<s:url action="listarFollowingsPublico"/>"><s:property value="following"/></a></strong></li>
                  Twits: <strong><s:property value="countTwits"/></strong></li>
              
              
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span6">
          <div class="hero-unit">
              
               <table class="table table-hover">
                <thead>Followers</thead> 
                <tbody> 
                   
                <s:iterator value="lista">
                    
                    <s:if test="relacion == 0">
                   <tr>
                       <td> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /></a></td>
                       <s:form action="followUsuariop" method="post">
                           <s:hidden name="idusuario" value="%{idmia}"/>
                           <s:hidden name="idseguidor" value="%{idseguidor}"/>
                           <s:hidden name="relacion" value="%{relacion}"/>
                       <td><s:submit type="button" label="Seguir" cssClass="btn-success"/></td> 
                       </s:form> 
                    
                </tr>
              
                </s:if>
                <s:if test="relacion == 1">
                   <tr>
                       <td> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /></a></td>
                        
                      <s:form action="unfollowUsuariop" method="post">
                           <s:hidden name="idusuario" value="%{idmia}"/>
                           <s:hidden name="idseguidor" value="%{idseguidor}"/>
                           <s:hidden name="relacion" value="%{relacion}"/>
                    <td><s:submit type="button" label="Dejar de Seguir" cssClass="btn-success"/></td>
                       </s:form>
                </tr>
             
                </s:if>
                <s:if test="relacion == 2">
                   <tr>
                       <td> <img src="./img/users/<s:property value="imagen" />" class="img-rounded" width="30"> <a href="http://localhost:8084/publico?u=<s:property value="nombre" />">@<s:property value="nombre" /></a></td>
                        <td></td>
                      
                </tr>
              
                </s:if>
                
                
                 </s:iterator>
                          
     </tbody>
    </table>
               
               
               
          </div>
            
            
          
          
        </div><!--/span-->
      </div><!--/row-->

<%@include file="footer.jsp"%>
<script>
 $(document).ready(function() {
 	 $("#divtest").load("http://localhost:8084/listar");
   var refreshId = setInterval(function() {
      $("#divtest").load('http://localhost:8084/api/listar');
   }, 9000);
   $.ajaxSetup({ cache: false });
});
</script>



<script>
    $(document).ready(function() {
    var text_max=200;
	$('#caracteres').html(text_max + ' caracteres restantes');
	$('#textarea').keyup(function(){
		var text_lenght= $('#textarea').val().length;
		var text_remaining= text_max - text_lenght;
	$('#caracteres').html(text_remaining + ' caracteres restantes');	
		})	
	
});
</script> 
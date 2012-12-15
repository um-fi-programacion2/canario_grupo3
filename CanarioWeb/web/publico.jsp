<%@include file="header.jsp"%>
<div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Usuario:</li>
              <img src="./img/users/<s:property value="reg.imagen"/>"  width="150" height="310"> 
              <s:form action="changeFollowState" method="post">
                  <s:hidden name="user" value="%{reg.idu}" />
                  <s:hidden name="r" value="%{relacion}" />

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
              Followers:<strong><a href="<s:url action="ListarFollowersPublico"/>"><s:property value="followers"/></a></strong></li>
              Following:<strong><a href="<s:url action="listarFollowingsPublico"/>"><s:property value="following"/></a></strong></li>
                  Twits: <strong><s:property value="countTwits"/></strong></li>
              
              
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span7">
          <div class="hero-unit">
        <div id="divdinamico">Cargando.....</div>
          </div>
          <div class="row-fluid">
          
          </div><!--/row-->
          <div class="row-fluid">
           
          </div><!--/row-->
        </div><!--/span-->
</div><!--/row-->

      
      
      
<%@include file="footer.jsp"%>
<script>
 $(document).ready(function() {
 	 $("#divdinamico").load("http://localhost:8084/listarpublico");
   var refreshId = setInterval(function() {
      $("#divdinamico").load('http://localhost:8084/api/listarpublico');
   }, 9000);
   $.ajaxSetup({ cache: false });
});
</script>

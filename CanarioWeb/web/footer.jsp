</div><!--/container-->

    </div> <!-- /container -->

    
  
    
    
    
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>

 <script>
    $(document).ready(function() {
    var text_max=200;
	$('#caracteres').html(text_max + ' caracteres restantes');
	$('#strings').keyup(function(){
            $(this).animate({ height: "120px" }, 50);
		var text_lenght= $('#strings').val().length;
		var text_remaining= text_max - text_lenght;
                
	$('#caracteres').html(text_remaining + ' caracteres restantes');	
		});
               
});

</script>

<script>
$(document).ready(function()
{

// Validation
$("#prueba").validate({
rules:{


strings:{required:true,minlength: 3}
},

messages:{
strings:"Ingrese al menos 3 caracteres"
},

errorClass: "help-inline",
errorElement: "span",
highlight:function(element, errorClass, validClass)
{
$(element).parents('.control-group').addClass('error');
},
unhighlight: function(element, errorClass, validClass)
{
$(element).parents('.control-group').removeClass('error');
$(element).parents('.control-group').addClass('success');
}
});
});
</script>
<script type="text/javascript" src="js/noty/jquery.noty.js"></script>
<script type="text/javascript" src="js/noty/layouts/bottom.js"></script>
<script type="text/javascript" src="js/noty/layouts/bottomRight.js"></script>
<!-- You can add more layouts if you want -->
<script type="text/javascript" src="js/noty/themes/default.js"></script>
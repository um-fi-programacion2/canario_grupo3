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


<script type="text/javascript" src="js/noty/jquery.noty.js"></script>
<script type="text/javascript" src="js/noty/layouts/bottom.js"></script>
<script type="text/javascript" src="js/noty/layouts/bottomRight.js"></script>
<!-- You can add more layouts if you want -->
<script type="text/javascript" src="js/noty/themes/default.js"></script>
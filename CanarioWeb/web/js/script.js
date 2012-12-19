// 
//	jQuery Validate example script
//
//	Prepared by David Cochran
//	
//	Free for your use -- No warranties, no guarantees!
//

  
 
        jQuery(document).ready(function() {
            
            var alCities = ['Capital (Mendoza)', 'General Alvear', 'Godoy Cruz', 'Guaymallen', 'Junin', 'La Paz', 'Las Heras', 'Lavalle', 'Lujan de Cuyo', 'Maipu', 'Malargue', 'Rivadavia', 'San Carllos', 'San Martin','San Rafael','Santa Rosa','Tunuyan','Tupungato'].sort();
            
            $('#localidad').typeahead({source: alCities, items:5});
            
    
	  $(document).ready(function(){
	$.validator.addMethod("Regex", function(value, element) {
             return this.optional(element) || /^[a-z0-9\-]+$/i.test(value);
            }, "Username must contain only letters, numbers, or dashes.");
             jQuery.validator.addMethod("lettersonly", function(value, element) {
                return this.optional(element) || /^[A-Za-z ]+$/i.test(value);
                }, "Letters only please");     
                
               
                       
			$("#contact-form").validate({
				rules:{ 

                                        nombre:{
                                          required:true,
                                          Regex:true
                                          
                                        },
                                        usuario:{required: true,
                                            lettersonly:true
                                        },
					mail:{
							required:true,
							email: true
						},
					pass:{
						required:true,
						minlength: 6
					},
                                        localidad: { required: true
                                            
                                                    }
				},
				messages:{

                                        nombre:{required:"Ingrese un nombre de Usuario",
                                                Regex:"El Usuario solo puede contener Letras y Numeros"
                                        },
                                        usuario:{required:"Ingrese su Nombre y Apellido",
                                        lettersonly:"Solo puede ingresar Letras en su Nombre y Apellido"
                                        },
					mail:{
						required:"Ingrese una direccion de correo",
						email:"Ingrese una direccion de correo valida"
					},
					pass:{
						required:"Ingrese una Contrasenia",
						minlength:"La Contrasenia  debe contener por lo menos 6 caracteres"
					},
                                        localidad:{required: "ingrese una localidad de la lista"}
				},
				errorClass: "help-inline",
				errorElement: "span",
				highlight:function(element, errorClass, validClass) {
					$(element).parents('.control-group').addClass('error');
				},
				unhighlight: function(element, errorClass, validClass) {
					$(element).parents('.control-group').removeClass('error');
					$(element).parents('.control-group').addClass('success');
				}
			});
		});
	
        });
       
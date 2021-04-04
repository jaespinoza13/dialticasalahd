window.onload = recuperarDatos();
function recuperarDatos(){



	$.ajax({
		
		type:"POST",
		url:"php/recuperardatos.php",
		data:cadena,
		
		
		success: function(data)
		
		{ 
		 
		 $("#tablalistada").html(data);
		 
		
		 

		}	
		
		
	 });
	}

	
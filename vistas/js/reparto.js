/*=============================================
EDITAR REPARTO
=============================================*/
$(".tablas").on("click", ".btnEditarReparto", function(){

	var idReparto = $(this).attr("idReparto");

	var datos = new FormData();
	datos.append("idReparto", idReparto);

	$.ajax({
		url: "ajax/reparto.ajax.php",
		method: "POST",
      	data: datos,
      	cache: false,
     	contentType: false,
     	processData: false,
     	dataType:"json",
     	success: function(respuesta){

     		$("#editarReparto").val(respuesta["reparto"]);
     		$("#idReparto").val(respuesta["id"]);

     	}

	})


})

/*=============================================
ELIMINAR REPARTO
=============================================*/
$(".tablas").on("click", ".btnEliminarReparto", function(){

	 var idReparto = $(this).attr("idReparto");

	 swal({
	 	title: '¿Está seguro de borrar la categoría?',
	 	text: "¡Si no lo está puede cancelar la acción!",
	 	type: 'warning',
	 	showCancelButton: true,
	 	confirmButtonColor: '#3085d6',
	 	cancelButtonColor: '#d33',
	 	cancelButtonText: 'Cancelar',
	 	confirmButtonText: 'Si, borrar categoría!'
	 }).then(function(result){

	 	if(result.value){

	 		window.location = "index.php?ruta=reparto&idreparto="+idReparto;

	 	}

	 })

})
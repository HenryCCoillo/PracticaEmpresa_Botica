var tabla;

function init(){
	 listar_precios();
}

function listar_precios(){
	tabla = $("#tbllistado").dataTable(
	{
		"aProcessing":true,
		"aServerSide":true,
	 //    dom: 'Bfrtip',//Definimos los elementos del control de tabla
		// buttons: [
		//             'copyHtml5',
		//             'excelHtml5',
		//             'pdf'
		//         ],
		"ajax": {
			url: "../ajax/articulo.php?op=listar_precios",
			type: "get",
			dataType: "json",
			error:function(e){
				console.log(e.responseText);
			}
		},
		"bDestroy": true,
		// "iDisplayLength": 5,
	    "order": [[ 0, "asc" ]]//Ordenar (columna,orden)
		
	}).DataTable();
}
init();
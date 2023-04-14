$('#frmAcceso').on('submit',function(e){
    e.preventDefault();
    logina=$("#logina").val();
    clavea=$("#clavea").val();

    $.post("../ajax/usuario.php?op=verificar",{"logina":logina,"clavea":clavea},function(data){
      if(data!="null")
      {
          $(location).attr("href","escritorio.php");
      }
      else {
        // bootbox.alert("usuario y/o password incorrectos");

        swal({
				  title: "Error",
				  text: "¡Usuario y/o password incorrecto! ",
          icon:"error",
          button: false,
          timer: 1000,
				}

				);
        
        // $("#mens").text("usuario y/o password incorrectos");
        // $("#mens").css({"color":"white","font-size":"17px"});
      }
    });

  })

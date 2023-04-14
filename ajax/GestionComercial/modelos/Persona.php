<?php
//Incluimos conexion a la base de trader_cdlrisefall3methods
require "../config/Conexion.php";

Class Persona
{
  //Implementando nuestro constructor
  public function __construct()
  {


  }
  //Implementamos metodo para insertar registro
    public function insertar($tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email,$razon_social)
    {
        $query = "SELECT * FROM persona where tipo_documento = '$tipo_documento' and num_documento = '$num_documento'";
		$resultado = ejecutarConsultaSimpleFila($query);
		// --
		if ($resultado) {
			return 2; // -- 2 Para saber que ya existe
		} else {
      $sql="INSERT INTO persona (tipo_persona, nombre, tipo_documento,num_documento,direccion,telefono,email,razon_social)
      VALUES ('$tipo_persona','$nombre','$tipo_documento','$num_documento','$direccion','$telefono','$email','$razon_social')";
      return ejecutarConsulta($sql);
   }
        
    }
    //Implementamos un metodo para editar registro
    public function editar($idpersona,$tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email,$razon_social)
    {
      $sql="UPDATE 
              persona 
            SET 
              tipo_persona='$tipo_persona',
              nombre='$nombre',
              tipo_documento='$tipo_documento',
              num_documento='$num_documento',
              direccion='$direccion',
              telefono='$telefono',
              email='$email',
              razon_social='$razon_social'
            where 
              idpersona='$idpersona'";
      return ejecutarConsulta($sql);
    }

    //Implementamos un metodo para eliminar registro
    public function eliminar($idpersona)
    {
      $sql="DELETE FROM persona
      where idpersona='$idpersona'";
      return ejecutarConsulta($sql);
    }

      //Implementamos un metodo para mostrar los datos de un registro a modificar
    public function mostrar($idpersona)
    {
      $sql="SELECT * FROM persona where idpersona='$idpersona'";
      return ejecutarConsultaSimpleFila($sql);

    }

    //Implementar metodo para listar los registros
    public function listarc()
    {
      $sql="SELECT * FROM persona where tipo_persona='Cliente'";
      return ejecutarConsulta($sql);

    }

    //Implementar metodo para listar los registros
    public function listarp()
    {
      $sql="SELECT * FROM persona where tipo_persona='Proveedor'";
      return ejecutarConsulta($sql);

    }

    //Implementar metodo para listar los registros
    public function listart()
    {
      $sql="SELECT * FROM persona where tipo_persona='Transportista'";
      return ejecutarConsulta($sql);

    }


    //Implementar metodo para listar los registros
    public function listarsucursal()
    {
      $sql="SELECT * FROM persona where tipo_persona='Sucursal'";
      return ejecutarConsulta($sql);

    }
    

  }



 ?>

<?php
//Incluimos conexion a la base de trader_cdlrisefall3methods
require "../config/Conexion.php";

Class Soporte 
{
  //Implementando nuestro constructor
  public function __construct()
  {


  }
  //Implementamos metodo para insertar registro
    public function insertar($codigo_soporte,$nombre_cliente,$telefono,$tecnico_respon,$fecha_ingreso,$fecha_salida,$marca,$problema,$solucion,$tipo_equipo,$estado_servicio,$estado_pago,$total,$cuota,$saldo,$estado_entrega,$direccion,$accesorio,$recomendacion,$garantia)
    {
      $sql="INSERT INTO soporte (codigo_soporte,nombre_cliente,telefono,tecnico_respon,fecha_ingreso,fecha_salida,marca,problema,solucion,tipo_equipo,estado_servicio,estado_pago,total,cuota,saldo,estado_entrega,direccion,accesorio,recomendacion,garantia)
      VALUES ('$codigo_soporte','$nombre_cliente','$telefono','$tecnico_respon','$fecha_ingreso','$fecha_salida','$marca','$problema','$solucion','$tipo_equipo','$estado_servicio','$estado_pago','$total','$cuota','$saldo','$estado_entrega','$direccion','$accesorio','$recomendacion','$garantia')";
     return ejecutarConsulta($sql);
   }
    //Implementamos un metodo para editar registro
    public function editar($idsoporte,$nombre_cliente,$telefono,$tecnico_respon,$fecha_ingreso,$fecha_salida,$marca,$problema,$solucion,$tipo_equipo,$codigo_soporte,$estado_servicio,$estado_pago,$total,$cuota,$saldo,$estado_entrega,$direccion,$accesorio,$recomendacion,$garantia)
    {
      $sql="UPDATE soporte SET 
      nombre_cliente='$nombre_cliente',
      telefono='$telefono',
      tecnico_respon='$tecnico_respon',
      fecha_ingreso='$fecha_ingreso',
      fecha_salida='$fecha_salida',
      marca='$marca',
      solucion='$solucion',
      problema='$problema',
      tipo_equipo='$tipo_equipo',
      codigo_soporte='$codigo_soporte' ,
      estado_servicio='$estado_servicio',
      estado_pago='$estado_pago',
      total='$total',
      cuota='$cuota',
      saldo='$saldo',
      estado_entrega='$estado_entrega',
      direccion='$direccion',
      accesorio='$accesorio',
      recomendacion='$recomendacion',
      garantia='$garantia' 
      WHERE idsoporte='$idsoporte'";
      return ejecutarConsulta($sql);
    }

    //Implementamos un metodo para eliminar registro
    public function eliminar($idcodigo)
    {
      $sql="DELETE FROM soporte where idsoporte='$idcodigo'";
      //echo $sql;
      ejecutarConsulta($sql);
    }

      //Implementamos un metodo para mostrar los datos de un registro a modificar
    public function mostrar($idsoporte)
    {
      $sql="SELECT * FROM soporte where idsoporte=$idsoporte";
      //echo $sql;
      return ejecutarConsultaSimpleFila($sql);

    }

    //Implementar metodo para listar los registros
    public function listar()
    {
      $sql="SELECT * FROM soporte" ;
      return ejecutarConsulta($sql);

    }
  


  }







 ?>

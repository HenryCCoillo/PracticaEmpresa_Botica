
<?php
if(strlen(session_id()) < 1)
  session_start();
  date_default_timezone_set('America/Lima'); 
// En windows
setlocale(LC_TIME, 'spanish');
 ?>
 <!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Formulario Contacto</title>
	<!-- <link rel="stylesheet" type="text/css" href="normalize.css"> -->
<style type="text/css">
		 table {color:black;
		 border: none;
            width: 100%;
		 }
		

		 .header{
		 	display: inline-block;
		 	padding-left: 20px; 
		 	padding-right: 20px; 

		 	
		 }
		 .text{
		 	padding-left: 20px; 
		 	padding-right: 20px;
		 	font-size: 15px;
		 	/*padding-bottom: : 10px;*/
		 	text-align:justify-all;
			line-height: 120%;
			margin-top: -2px

		 }
		 .text2{
		 	padding-left: 50px; 
		 	padding-right: 40px;
		 	padding-bottom: : 10px;
		 	text-align:justify-all;
			line-height: 170%;
		 }
		 .info{
		 	width: 100%; 
		 	font-size:16px;
		 	text-align:justify;
		 }
		 .factura{
		 	color: red;
		 	font-size: 16px;
		 	width: 28%;
		 	height:10px;
		 	border: 1px solid red;
		 	text-align: center;
		 }
		 .linea{
		 	padding-left: 20px; 
		 	padding-right: 20px; 

		 }
		 .cliente{
		 	padding-left: 20px; 
		 	padding-right: 20px;

		 }
		 .articulos{
		 	padding-left: 40px; 
		 	padding-right: 40px;
		 	font-size:11px;
		 	margin-top: -15px
		 }
		  .productos{
		 	font-size:12px;
		 	border-collapse: collapse;
    		padding-left: 20px; 
		 	padding-right: 20px;

		 }
		 .cabecera{
		 	background:#087DA2;
			color:white;
			line-height: 65px;
			font-size:12px;
			padding-left: 20px; 
		 	padding-right: 20px;
		 	line-height: 65px;
		
		 .foot{
		 	padding-left: 20px; 
		 	padding-right: 20px;
		 	font-size: 8pt;
		 }
		 		 .aviso{		 	
		 	font-size: 10pt;	
		 	margin-left: 10px;
		 	margin-right: 10px;
		 	text-align: justify;
		 	padding: 20px;
		 	padding-top: 10px;
		 	padding-bottom: 10px;
		 	border: solid 0.3px #000;

		 }
		 .silver{
			background:white;
			padding: 3px 4px 3px;
		}
		.clouds{
			background:#ecf0f1;
			padding: 3px 4px 3px;
		}
	</style>
</head>
<body>
<?php 
	require_once "../modelos/Perfil.php";
	$perfil=new Perfil();
	$rspta=$perfil->cabecera_perfil();
	$reg=$rspta->fetch_assoc();
	$rucp=$reg['ruc'];
	$razon_social=$reg['razon_social'];
	$direccion=$reg['direccion'];
	$distrito=$reg['distrito'];
	$provincia=$reg['provincia'];
	$departamento=$reg['departamento'];
	$telefono=$reg['telefono'];
	$email=$reg['email'];
	$logo=$reg['logo'];
	// $conexion->close() 
	require_once "../modelos/Cotizacion.php";
	$venta=new Cotizacion();
	$rsptac= $venta->ventacabecera($_GET["id"]);
	$regc=$rsptac->fetch_object();
	$cliente=$regc->cliente;
	//$validez=$regc->validez;
	//$tiempo_entrega=$regc->tiempo_entrega;
	$ruc=$regc->num_documento;
	$direccioncliente=$regc->direccion;
	$serie=$regc->serie;
	$correlativo=$regc->correlativo;
	$moneda=$regc->descmoneda;
	$fecha=$regc->fecha;
	$op_gravadas=$regc->op_gravadas;
	$op_inafectas=$regc->op_inafectas;
	$op_exoneradas=$regc->op_exoneradas;
	$op_gratuitas=$regc->op_gratuitas;
	$isc=$regc->isc;
	$total_venta=$regc->total_venta;
	

	$rsptad= $venta->ventadetalle($_GET["id"]);
	$item=0;
	$sumdescuento=0.00;
	$sumigv=0.00;
 ?>
   <!--<page_header>
		     <table id="encabezado">
		            <tr class="fila">
		                <td id="col_1" style="width: 96%" >
		                    <img style="width: 760px;height: 80px;" src="../files/perfil/cabecera.png">
		                </td>
		            </tr>
		        </table>
		    </page_header>
		 	
		<page_footer>
		    <hr style="border-color:red;">
		    <table style="width: 100%;">
	        	<tr class="info">
	        		<td style="text-align: center; width: 100%">
		               Telef.: <?php echo $telefono; ?> -Email.: <?php echo $email; ?>
		            </td>   
	        	</tr>
	        </table>
    	</page_footer>-->
<!-- Footer -->
<page_footer>
<hr style="border: solid 0.3px red;">
	<div  class="foot">
		<table style="width: 100%" >
			<tr>
				<td style=" width: 100%; text-align: center;">
		            <span style=" font-style: italic; ">Antes de imprimir seleccione sólo lo necesario y <b>PIENSE EN EL MEDIO AMBIENTE</b>. </span><br>
		            
		        </td>
			</tr>
		</table>
	</div>	
</page_footer>
<!-- Fin Footer -->
    	<form action>
			<input type="hidden" name="rucempresa">
			<input type="hidden" name="seriecompro">
			<input type="hidden" name="correlativocompro">
		</form>
		<br>
<!--  Fin Header -->
		<div class="header">
			 <table style="width: 100%;">
	        	<tr> 
		            <td style="width: 65%">
		                <img style="height: 80px" src="../files/perfil/<?php echo $logo;?>" alt="Logo"><br><br>
		                <span style="color: #34495e;font-size:18px;font-weight:bold">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $razon_social; ?></span>
		            </td>
					<td class="factura" style="width:30%">
						<p>R.U.C. <?php echo $rucp; ?> <br><br>
							<b>PROFORMA</b><br><br>					
						<?php echo $serie.'-'.$correlativo; ?></p>
					</td>
					<td style="width: 5%"></td>
	        	</tr>
	        </table>
	    </div>
	    <br>
	    <div class="articulos">
	    	<table style="width: 100%;" class="info" >
	        	<tr>
	        		<td style="width: 55%">
	        			<?php echo $direccion; ?> <?php echo $distrito; ?> - <?php echo $provincia; ?>  - <?php echo $departamento; ?>		
	        		</td>
	        	</tr>
	        </table>
	        <table style="width: 100%;" class="info" >
	        	<tr>
		            <td  style="width: 50%">Email.: <?php echo $email; ?></td>
		            <td  style="width: 50%">Telef.: <?php echo $telefono; ?></td>
	        	</tr>

		 	</table>

		</div>
		<hr style="border: solid 0.3px #000;">
<!--  Fin Header -->
	   	<div class="cliente">
			<table style="width: 100%;">
				<tr style="">
					<?php 
						list($anno,$mes,$dia)=explode('-',$fecha)
						 ?>
						<td style="width: 13%"><b>CLIENTE</b></td>
						<td style="width: 80%">: <?php echo $cliente; ?></td>
						
				</tr>
				<tr>
					<td style="width: 13%"><b>R.U.C</b>.</td>
					<td style="width: 80%">: <?php echo $ruc; ?> </td>
				</tr>
				<tr>
					<td style="width: 13%"><b>DIRECCIÓN</b></td>
					<td style="width: 80%">: <?php echo $direccioncliente; ?></td>
				</tr>
			</table>
			<table style="width: 100%;">
				<tr>
					<td style="width: 13%"><b>FECHA</b></td>
					<td style="width: 26%">: <?php echo strftime("%d de %B del %Y", strtotime($fecha)); ?></td>
					<!--<td style="width: 18%"><b>Validez de la Oferta</b></td>
					<td style="width: 10%">:<?php echo $validez;?></td>
					<td style="width: 18%"><b>Tiempo de entrega</b></td>
					<td style="width: 10%">:<?php echo $tiempo_entrega;?></td>-->
				</tr>
			</table>	
		</div>
		<hr style="border: solid 0.3px #000;">
		<p class="text">
			En atención a su amable solicitud presentamos nuestra propuesta económica según indicaciones:
		</p>
		<div  class="productos" style="width: 100%">
			<table style="border: solid 0.3px #087DA2; ">
				<tr class="cabecera" style="width: 100%; text-align: center;">		           
		            <th style="width: 60%; text-align: center; height: 12px; padding-top: 5px ">DESCRIPCIÓN</th>
					<th style="width: 7%; text-align: center; padding-top: 5px ">CAT.</th>
					<th style="width: 15%; text-align: center; padding-top: 5px ">P. UNIT.</th>
					<th style="width: 15%; text-align: center; padding-top: 5px ">IMPORTE</th> 
				</tr>
        		<?php while($regd=$rsptad->fetch_object()){	
        			$item+=1;
        			if($regd->unidad_medida=='otros'){
        				$medida=$regd->descripcion_otros;
        			}

        			$sumdescuento+=$regd->descuento;
        			// $sumigv+=(($regd->precio_venta/1.18)*$regd->cantidad)*0.18;


        			if($regd->afectacion=='Exonerado'){
    					$newValorU=$regd->precio_venta;
    					$newigv=  0;
    				}else if($regd->afectacion=='Gravado'){
			    		$newValoU=$regd->precio_venta/1.18;
			    		$newValorU=round($newValoU,2);
			    		$newigv=  ($regd->cantidad*$regd->precio_venta/1.18-$regd->descuento)*0.18;
			    	}
         
			    	$sumigv+=$newigv;

        			if($item%2==0){
        				$estilo='silver';
        			}else{
        				$estilo='clouds';
        			}
        			?>
					<tr  style="text-align:center">					
					<td class="<?php echo $estilo; ?>" style="text-align:left; width: 60%"><?php echo $regd->articulo.' '.$regd->serieCotizacion; ?></td>
					<!--<td class="<?php echo $estilo; ?>" style="width: 5%"><?php echo $regd->cantidad; ?></td>-->
					<td class="<?php echo $estilo; ?>" style="width: 7%"><?php echo $regd->cantidad; ?></td>
					<td class="<?php echo $estilo; ?>" style="width: 15%"><?php echo $regd->precio_venta; ?></td>
					<td class="<?php echo $estilo; ?>" style="width: 15%">
				<?php $subTotal =  $regd->precio_venta*$regd->cantidad-$regd->descuento; echo number_format($subTotal,2);?></td>
				</tr>

        		 <?php }?>
				
				
			</table>

			<br>
			<table cellspacing="0" cellpadding="0" border="0.2"  align="center">
				<tr style="width: 100%; text-align: left; border= 0.2">
					<b>
		            <td style="text-align: center; width:20%">SUB TOTAL</td>
		            <td style="text-align: center; width:20%">IGV (18%)</td>
		            <td style="text-align: center; width:20%">PRECIO TOTAL</td></b>            
        		</tr>
        		<tr style="width: 100%; text-align: center;">
					<td style="width:20%">S/&nbsp;&nbsp;&nbsp;&nbsp; <b><?php echo number_format($op_gravadas,2,'.',','); ?></b></td>			
					<td style="width:20%">S/&nbsp;&nbsp;&nbsp;&nbsp; <b><?php echo number_format($sumigv,2,'.',','); ?></b></td>
					<td style="width:20%">S/&nbsp;&nbsp;&nbsp;&nbsp; <b><?php echo number_format($total_venta,2,'.',','); ?></b></td>			
				</tr>
			</table>
			<br>
			<?php 
			require_once "numeroALetras.php";
			$letras = NumeroALetras::convertir($total_venta);
			list($num,$cen)=explode('.',$total_venta);
			 ?>
			 <table style="width: 100%;">
	        	<tr >
	        		<td style="width: 97%"> SON: <b><?php echo $letras.' Y '.$cen; ?>/100 SOLES</b><br>
						<hr style="border-color:#000;">
		            </td>   
	        	</tr>
	        </table>	
		</div>

		<br>
		<!--  Medio de Pago-->
		<div class="aviso">
			<table style="width: 98%;">
				<tr>
					<td style="width: 95%;"><b>INSTRUCCIONES PARA PAGAR</b> </td>
				</tr>
				<tr>
					<td style="width: 98%;">
						Acercándose a una agencia u oficina del Banco, cajero automático, agente o transferencia por internet, (si el pago es de provincia considerar la comisión por plaza).  
					</td>				
				</tr>
			</table>
			<table style="width: 98%;">
				<tr>
					<td style="width: 28%;"><b>TITULAR DE LA CUENTA</b></td>
					<td style="width: 70%;">: WILDER FLORENTINO JULCA BRONCANO</td>					
				</tr>
			</table>
			<table style="width: 98%;">
				<tr>
					<td style="width: 28%;"><b>CUENTA SOLES BCP</b></td>
					<td style="width: 25%;">: 191-34789343-0-48</td>
					<td style="width: 4%;"><b>CCI</b></td>
					<td style="width: 30%;">: 00219113478934304852</td>
				</tr>
				<tr>
					<td style="width: 28%;"><b>CUENTA SOLES BBVA</b></td>
					<td style="width: 25%;">: 0011-0264-02-00083101</td>
					<td style="width: 4%;"><b>CCI</b></td>
					<td style="width: 30%;">: 011-264-000200083101-92</td>
				</tr>
				<tr>
					<td style="width:28%;"><b>CUENTA DETRACCIÓN BN</b></td>
					<td style="width: 25%;">: 00363002463</td>
					<td style="width: 4%;"><b>CCI</b></td>
					<td style="width: 30%;">: 011-264-000200083101-92</td>
				</tr>		
			</table>
		</div>
		<!-- Fin Medio de Pago-->

		

   
 
   

</body>
</html>
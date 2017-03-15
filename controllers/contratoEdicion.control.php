<?php
require_once("libs/template_engine.php");
require_once("models/contratos.model.php");
require_once("models/empresa.model.php");
require_once("models/servicios.model.php");
require_once("models/subirArchivo.model.php");

function run(){
  $contratosDatos["mode"]= $_GET["mode"];

  if(isset($_GET["ContratoCodigo"])){
  $Datos = array();
  $servicio = array();
  $vigencias=  array( );
  $Datos["contratosDatos"]=obtenerUnContrato($_GET["ContratoCodigo"]);
  $vigencias=obtenerVigencias();
  $servicio= obtenerServicios();//obtenemos el array de servicios
  $ContratoCodigo= $_GET["ContratoCodigo"];
  $EmpresaCodigo=$_GET["EmpresaCodigo"];
  }

  if(isset($_POST["btnGuardar"])){
    //  $servicon=array("servicio"=>$_POST["ContratoFechaFinal"]);
      $EmpresaCodigo="";
      $errores="";
      $EmpresaCodigo=$_POST["txtEmpresaCodigo"];
      $location="";
      $errores=ActualizarContrato( $_POST["txtCodContrato"],  $_POST["txtServicio"],$_POST["txtVigencia"] ,$_POST["ContratoFechaInicio"],$_POST["ContratoFechaFinal"],$_POST["ContratoValor"]);
      $location="Location:index.php?page=VerContratos&mode=Ver&EmpresaCodigo=".$EmpresaCodigo."&error=".$errores;
      header($location);
  }
  print_r($Datos);
   renderizar("contratoEdicion",array("datos" => $Datos, "servicio"=>$servicio,"vigencias"=>$vigencias,"contratoCodigo"=>$ContratoCodigo,"empresaCodigo"=>$EmpresaCodigo ) );
}

  run();
 ?>

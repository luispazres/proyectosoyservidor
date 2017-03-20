<?php
  require_once("libs/template_engine.php");
  require_once("models/contratos.model.php");

  function run(){
   $dataPlantilla = array();
   $errores="";
   $dataPlantilla["tblcontratos"] = obtenerContratosAlerta();
   
   renderizar("alertaContratos",$dataPlantilla);
  }
  run();
 ?>

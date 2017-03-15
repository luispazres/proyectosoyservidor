<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
  require_once("libs/template_engine.php");
  require_once("models/empresa.model.php");
  function run(){
    $datos = array();
    $datos["mostrarErrores"] = false;
    $datos["errores"] = array();
    $datos["txtNombre"]="";
    $datos["txtRepresentante"] = "";
    $datos["txtComercial"]="";
    $datos["txtRTN"]="";

    if(isset($_POST["btnGuardar"])){
        insertarEmpresa($_POST["txtNombre"],$_POST["txtRepresentante"],$_POST["txtComercial"],$_POST["txtRTN"]);
          redirectWithMessage("Empresa,Guardada Exitosamente ","index.php?page=listadoEmpresa");
    }
      if (isset($_POST["btnCancelar"])) {
          header("Location:index.php?page=listadoEmpresa");
      }

    renderizar("empresa",$datos);

  }
  run();
?>

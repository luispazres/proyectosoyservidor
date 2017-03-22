<?php
  require_once("libs/template_engine.php");
  require_once("models/registro.model.php");

  function run(){

    if(mw_estaLogueado()){
      $datos= array();
      $datos["mostrarErrores"] = false;
      $datos["errores"] = array();
      $datos["password"]="";
      $datos["txtPasswordCnf"]="";
      $datos["txtEmail"]="";

      if(isset($_POST["btnGuardar"])){
        $datos["txtEmail"] = $_POST["txtEmail"];
        $password = $_POST["password"];
        $passwordCnf = $_POST["txtPasswordCnf"];

        if($password == $passwordCnf){
          $password=md5($password);

          actualizarRegistro($password,$_POST["txtEmail"]);

          header("Location:index.php?page=login2");
          //}
        }else{
          $datos["mostrarErrores"] = true;
          $datos["errores"][]=array("errmsg"=>"Contraseñas no coinciden");
        }
      }
    renderizar("restablecerContrasena",$datos);
    }else {
      mw_redirectToLogin("page=login2");
    }


    }
  run();
?>

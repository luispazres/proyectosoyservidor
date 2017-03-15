
<?php
  require_once("libs/template_engine.php");
  require_once("libs/dao.php");
  require_once("models/login.model.php");
  require_once("models/roles.model.php");
  function run(){

    $userName = "";
    $returnUrl = "";
    $errores = array();
    $rolCod["txtCargo"]="";

     if(isset($_POST["btnPrueba"])){
       header("location:index.php?page=restablecerContrasena");
     }


    if(isset($_POST["btnLogin"])){
        $userName = $_POST["txtUser"];
        $pswd = $_POST["txtPswd"];
        $usuario = obtenerUsuario($userName);

        if($usuario){

          $pswd=md5($pswd);
          if(obtenerPassword($userName,$pswd)){
            mw_setEstaLogueado($userName, true);
            header("Location:index.php?page=listadoEmpresa");
            session_start();
            if(isset($_SESSION["user"])){
             $user= $_SESSION["user"];
            }
              $user["userName"]=$usuario["nombre"];
              $user["rol"]=$usuario["rolCodigo"];
              $user["correo"]=$usuario["correo"];
              $_SESSION["user"]=$user;
              die();
           }else{
            $errores[] = array("errmsg"=>"Credenciales Incorrectas");
          }
        }else{
                 $errores[] = array("errmsg"=>"Credenciales Incorrectas");
               }
           }
           $datos = array("txtUser" => $userName,
                          "returnUrl" => $returnUrl,
                          "mostrarErrores" => (count($errores)>0),
                          "errores" => $errores);

           renderizar("login2", $datos);

         }
         run();
       ?>

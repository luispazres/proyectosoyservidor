<?php
/* Home Controller
 * 2014-10-14
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
    require_once("libs/template_engine.php");
    require_once("clases/PHPMailerAutoload.php");
    require_once("clases/class.phpmailer.php");
    require_once("clases/class.phpmaileroauth.php");
    require_once("clases/class.smtp.php");
    require_once("clases/class.pop3.php");
    require_once("clases/class.phpmaileroauthgoogle.php");
    require_once("models/contratos.model.php");

  function run(){

    addCssRef("public/css/home.css");
  
    renderizar("home", array('dia' => $dia));
  }

  run();
?>

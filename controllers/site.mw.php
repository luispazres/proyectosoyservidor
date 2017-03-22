<?php
//middleware de configuración de todo el sitio
require_once("models/contratos.model.php");
require_once("models/alertas.model.php");
require_once("clases/PHPMailerAutoload.php");
require_once("clases/class.phpmailer.php");
require_once("clases/class.phpmaileroauth.php");
require_once("clases/class.smtp.php");
require_once("clases/class.pop3.php");
require_once("clases/class.phpmaileroauthgoogle.php");
function site_init(){

  $contratos="";
  $contratosAVencer = array( );
  $contratosVencidos = array( );
  $dia="95";
  $mes="";
  $anio="";
  $resta=0;
  $mensaje="";
  $convertedDate="";
  $hoy=date('Y-m-d');
  $hoyObjeto= new DateTime(date('Y-m-d H:i:s'));
  $today_time = strtotime($hoy);
  $cont=0;
  $fecha=array();
  $today=array("mes"=>date("m"),"anio"=>date("Y"),"dia"=>date("d"));
  $alert=$today['anio']."-".$today["mes"]."-".$today["dia"];
  $contratosHeader="";

  $contratos=obtenerTodosLosContratos();

  foreach ($contratos as $key) {

  $convertedDate=strtotime($key["ContratoFechaFinal"]);
  $vencimientoObjeto = new DateTime(date($key["ContratoFechaFinal"]));
  $dia = date('d',$convertedDate);
  $mes = date('m',$convertedDate);
  $anio= date('Y',$convertedDate);

  $interval = $hoyObjeto->diff($vencimientoObjeto);

  echo "Dias: ".$interval->format('%R%a días')." || ";

  if ($key["ContratoFechaFinal"]<=$hoy) {
    $contratosVencidos[]=$key;
  }

  if ($interval->days==13) {
    $contratosAVencer[]=$key;
  }

  if ($interval->days==28) {

  $contratosAVencer[]=$key;
  }

  if ($interval->days==6) {

  $contratosAVencer[]=$key;
  }
}

foreach ($contratosVencidos as $key) {
  $cont++;
  $contratosHeader.="<li class='notification'>
  <div class='media'>
  <div class='media-left'>
  <div class='media-object'>
   <img data-src='holder.js/50x50?bg=cccccc' class='img-circle' alt='Name'>
  </div>
  </div>
  <div class='media-body'>
  <strong class='notification-title'>Alerta Contrato: ".$key["ContratoCodigo"]." El contrato de ".$key["ServicioNombre"]." de la empresa ".$key["EmpresaNombre"]." esta vencido.</strong>

  <div class='notification-meta'>
   <small >Venció: ".$key["ContratoFechaFinal"]."</small>
  </div>

  </div>
  </div>
  </li>";
}

  foreach ($contratosAVencer as $key) {
    $cont++;
    $contratosHeader.="<li class='notification'>
    <div class='media'>
    <div class='media-left'>
    <div class='media-object'>
     <img data-src='holder.js/50x50?bg=cccccc' class='img-circle' alt='Name'>
    </div>
    </div>
    <div class='media-body'>
    <strong class='notification-title'>Alerta Contrato: ".$key["ContratoCodigo"]." El contrato de ".$key["ServicioNombre"]." de la empresa ".$key["EmpresaNombre"]."</strong>

    <div class='notification-meta'>
     <small >Vence: ".$key["ContratoFechaFinal"]."</small>
    </div>

    </div>
    </div>
    </li>";
  }

  if (!obtenerAlerta($alert)) {
    $contratos=obtenerTodosLosContratos();

    foreach ($contratos as $key) {

    $convertedDate=strtotime($key["ContratoFechaFinal"]);
    $dia = date('d',$convertedDate);
    $mes = date('m',$convertedDate);
    $anio= date('Y',$convertedDate);

    if ($interval->days==28) {

      $mail = new PHPMailer;

    $mensaje="Alerta de vencimiento\n\n El contrato #".$key["ContratoCodigo"]." tiene 15 dias de vigencia antes de su vencimiento";
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'desarrollojr@soyservidor.com';
    $mail->Password = 'soyservidor2017';                           // SMTP password
    $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 465 ;                                    // TCP port to connect to

    $mail->setFrom('desarrollojr@soyservidor.com', 'Mailer');
    $mail->addAddress('michi.navarro1994@gmail.com', 'Michelle');     // Add a recipient
    //$mail->addAddress('ellen@example.com');               // Name is optional
    $mail->addReplyTo('desarrollojr@soyservidor.com', 'Information');
    //$mail->addCC('cc@example.com');
    //$mail->addBCC('bcc@example.com');

    //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
    $mail->isHTML(true);                                  // Set email format to HTML

    $mail->Subject = 'Alerta de vencimiento de contrato';
    $mail->Body    = 'El contrato #'.$key["ContratoCodigo"].' de la empresa '.$key["EmpresaNombre"].' con servicio '.$key["ServicioNombre"].' esta a 30 dias de expirar.';
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    if(!$mail->send()) {
        echo 'Message could not be sent.';
        echo 'Mailer Error: ' . $mail->ErrorInfo;
    } else {
        echo 'Message has been sent';
    }
  }

  if ($interval->days==13) {

  $mail = new PHPMailer;

  $mensaje="Alerta de vencimiento\n\n El contrato #".$key["ContratoCodigo"]." tiene 15 dias de vigencia antes de su vencimiento";
  $mail->isSMTP();
  $mail->Host = 'smtp.gmail.com';
  $mail->SMTPAuth = true;
  $mail->Username = 'desarrollojr@soyservidor.com';
  $mail->Password = 'soyservidor2017';                           // SMTP password
  $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
  $mail->Port = 465 ;                                    // TCP port to connect to

  $mail->setFrom('desarrollojr@soyservidor.com', 'Mailer');
  $mail->addAddress('michi.navarro1994@gmail.com', 'Michelle');        // Add a recipient
  //$mail->addAddress('ellen@example.com');               // Name is optional
  $mail->addReplyTo('desarrollojr@soyservidor.com', 'Information');
  //$mail->addCC('cc@example.com');
  //$mail->addBCC('bcc@example.com');

  //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
  $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
  $mail->isHTML(true);                                  // Set email format to HTML

  $mail->Subject = 'Alerta de vencimiento.';
  $mail->Body    = $mensaje;
  $mail->AltBody = 'El contrato #'.$key["ContratoCodigo"].' de la empresa '.$key["EmpresaNombre"].' con servicio '.$key["ServicioNombre"].' esta a 15 dias de expirar.';

  if(!$mail->send()) {
      echo 'Message could not be sent.';
      echo 'Mailer Error: ' . $mail->ErrorInfo;
  } else {
      echo 'Message has been sent';
  }
  }

  if ($interval->days==5) {

   $mail = new PHPMailer;

  $mensaje="Alerta de vencimiento\n\n El contrato #".$key["ContratoCodigo"]." tiene 15 dias de vigencia antes de su vencimiento";
  $mail->isSMTP();
  $mail->Host = 'smtp.gmail.com';
  $mail->SMTPAuth = true;
  $mail->Username = 'desarrollojr@soyservidor.com';
  $mail->Password = 'soyservidor2017';                           // SMTP password
  $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
  $mail->Port = 465 ;                                    // TCP port to connect to

  $mail->setFrom('desarrollojr@soyservidor.com', 'Mailer');
  $mail->addAddress('michi.navarro1994@gmail.com', 'Michelle');         // Add a recipient
  //$mail->addAddress('ellen@example.com');               // Name is optional
  $mail->addReplyTo('desarrollojr@soyservidor.com', 'Information');
  //$mail->addCC('cc@example.com');
  //$mail->addBCC('bcc@example.com');

  //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
  $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
  $mail->isHTML(true);                                  // Set email format to HTML

  $mail->Subject = 'Alerta de vencimiento';
  $mail->Body    = $mensaje;
  $mail->AltBody = 'El contrato #'.$key["ContratoCodigo"].' de la empresa '.$key["EmpresaNombre"].' con servicio '.$key["ServicioNombre"].' esta a 7 dias de expirar.';

  if(!$mail->send()) {
      echo 'Message could not be sent.';
      echo 'Mailer Error: ' . $mail->ErrorInfo;
  } else {
      echo 'Message has been sent';
  }
}

    }

  insertarAlerta($alert);
}

/*if ($Session["rol"]==1) {*/
  $navbar="<nav class='navbar navbar-default'>
<div class='container-fluid'>
  <div class='navbar-header'>
    <a class='navbar-brand' href='#'>
      <img width='15%' alt='Brand' src='https://media.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAXaAAAAJDQ4YTA0ZWNhLWJjMDItNDdiOS05MjI3LTUzNjYyMGJlODE1Nw.png'>
    </a>
    <div class='btn-group dropdown dropdown-notifications sw-open'>
    <button class='btn btn-default dropdown-toggle' data-toggle='dropdown'>
    <i data-count='".$cont."' class='glyphicon glyphicon-bell notification-icon'></i>
    <span class='caret'></span>
    </button>

    <div class='dropdown-container'>
    <div class='dropdown-toolbar'>
    <div class='dropdown-toolbar-actions'>
    <a href='index.php?page=alertaContratos'><i class='glyphicon glyphicon-search'></i> View All</a>
    </div>
    <h3 class='dropdown-toolbar-title'>Recent Notifications  (".$cont.")</h3>
    </div><!-- /dropdown-toolbar -->

    <ul class='dropdown-menu notifications'>
  ".$contratosHeader."
    </ul>
    </div>
    </div>
  </div>
</div>
</nav>";
/*}else {
  $navbar="<nav class='navbar navbar-default'>
<div class='container-fluid'>
  <div class='navbar-header'>
    <a class='navbar-brand' href='#'>
      <img width='15%' alt='Brand' src='https://media.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAXaAAAAJDQ4YTA0ZWNhLWJjMDItNDdiOS05MjI3LTUzNjYyMGJlODE1Nw.png'>
    </a>
    <div class='btn-group dropdown dropdown-notifications sw-open'>
    <button class='btn btn-default dropdown-toggle' data-toggle='dropdown'>
    <i data-count='".$cont."' class='glyphicon glyphicon-bell notification-icon'></i>
    <span class='caret'></span>
    </button>

    <div class='dropdown-container'>
    <div class='dropdown-toolbar'>
    <div class='dropdown-toolbar-actions'>
    <a href='#''><i class='glyphicon glyphicon-search'></i> View All</a>
    </div>
    <h3 class='dropdown-toolbar-title'>Recent Notifications  (".$cont.")</h3>
    </div><!-- /dropdown-toolbar -->

    <ul class='dropdown-menu notifications'>
  ".$contratosHeader."
    </ul>
    </div>
    </div>
  </div>
</div>
</nav>";
}*/


  //  print_r($contratosVencidos);
    addToContext("page_header",$navbar);
    addToContext("page_title","Proyecto Soy Servidor");

}
site_init();
?>

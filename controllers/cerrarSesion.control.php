<?php
  require_once("libs/template_engine.php");


  function run(){
    $data = array();

    session_start();
    session_destroy();/*destruye la informacion registrada de una variable de sesion*/
    Location('Location:index.php?page=login2');

    renderizar("cerrarSesion", $data);
  }
  run();
?>

<?php

      require_once("libs/template_engine.php");

      function run(){

        $datos= array();

        renderizar("dashboard", $datos);
      }
      run();
?>

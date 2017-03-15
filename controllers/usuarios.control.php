<?php
     require_once("libs/template_engine.php");
     require_once("models/registro.model.php");
     require_once("models/pagination.model.php");

     function run(){
       /* Procesamiento */
       $data = array();
       $data["usuarioNombre"] = "";
       $data["usuarioApellido"] = "";
       $data["usuarioCorreo"] ="";

       $data["tblusuarios"] = array();
       $data["tblusuarios"] = obtenerUsuarios(
                               $data["usuarioNombre"],
                               $data["usuarioApellido"],
                               $data["usuarioCorreo"]
                              );

       renderizar("usuarios", $data);
     }
     run();
    ?>

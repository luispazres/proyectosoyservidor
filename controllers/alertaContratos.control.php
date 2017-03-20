<?php
  require_once("libs/template_engine.php");
  require_once("models/contratos.model.php");

  function run(){
   $dataPlantilla = array();
   $errores="";
   $hoy=date('Y-m-d');
   $hoyObjeto= new DateTime(date('Y-m-d H:i:s'));
   $dataPlantilla["tblcontratos"] = obtenerContratosAlerta();
   $td="";

   $contratos=obtenerTodosLosContratos();

   foreach ($contratos as $key) {

   $convertedDate=strtotime($key["ContratoFechaFinal"]);
   $vencimientoObjeto = new DateTime(date($key["ContratoFechaFinal"]));
   $dia = date('d',$convertedDate);
   $mes = date('m',$convertedDate);
   $anio= date('Y',$convertedDate);

   $interval = $vencimientoObjeto->diff($hoyObjeto);

   if ($key["ContratoFechaFinal"]<=$hoy) {
     $td.="<tr bgcolor='#bb1313'>
       <td>
         ".$key["ContratoCodigo"]."
       </td>
       <td>
         ".$key["ContratoFechaInicio"]."
       </td>
       <td>
         ".$key["ContratoFechaFinal"]."
       </td>
       <td>
         ".$key["EmpresaNombre"]."
       </td>
       <td>
         ".$key["ServicioNombre"]."
       </td>
     </tr>";
   }

   if ($interval->days==14) {
     $td.="<tr bgcolor='#f0f517'>
       <td>
         ".$key["ContratoCodigo"]."
       </td>
       <td>
         ".$key["ContratoFechaInicio"]."
       </td>
       <td>
         ".$key["ContratoFechaFinal"]."
       </td>
       <td>
         ".$key["EmpresaNombre"]."
       </td>
       <td>
         ".$key["ServicioNombre"]."
       </td>
     </tr>";
   }

   if ($interval->days==29) {

     $td.="<tr bgcolor='#a7f659'>
       <td>
         ".$key["ContratoCodigo"]."
       </td>
       <td>
         ".$key["ContratoFechaInicio"]."
       </td>
       <td>
         ".$key["ContratoFechaFinal"]."
       </td>
       <td>
         ".$key["EmpresaNombre"]."
       </td>
       <td>
         ".$key["ServicioNombre"]."
       </td>
     </tr>";
   }

   if ($interval->days==6) {

     $td.="<tr bgcolor='#df9e30'>
       <td>
         ".$key["ContratoCodigo"]."
       </td>
       <td>
         ".$key["ContratoFechaInicio"]."
       </td>
       <td>
         ".$key["ContratoFechaFinal"]."
       </td>
       <td>
         ".$key["EmpresaNombre"]."
       </td>
       <td>
         ".$key["ServicioNombre"]."
       </td>
     </tr>";
   }
 }


   renderizar("alertaContratos", array('td' => $td ) );
  }
  run();
 ?>

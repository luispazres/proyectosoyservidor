<?php
//middleware de configuración de todo el sitio

function site_init(){
    $header="<div class='btn-group dropdown dropdown-notifications sw-open'>
<button class='btn btn-default dropdown-toggle' data-toggle='dropdown'>
<i data-count='3' class='glyphicon glyphicon-bell notification-icon'></i>
<span class='caret'></span>
</button>

<div class='dropdown-container'>
<div class='dropdown-toolbar'>
  <div class='dropdown-toolbar-actions'>
    <a href='#''><i class='glyphicon glyphicon-search'></i> View All</a>
  </div>
  <h3 class='dropdown-toolbar-title'>Recent Notifications  (3)</h3>
</div><!-- /dropdown-toolbar -->

<ul class='dropdown-menu notifications'>
  <li class='notification'>
<div class='media'>
 <div class='media-left'>
   <div class='media-object'>
     <img data-src='holder.js/50x50?bg=cccccc' class='img-circle' alt='Name'>
   </div>
 </div>
 <div class='media-body'>
   <strong class='notification-title'><a href='#'>Dave Lister</a> commented on <a href='#'DWARF-13 - Maintenance</a></strong>
   <p class='notification-desc'>I totally don't wanna do it. Rimmer can do it.</p>

   <div class='notification-meta'>
     <small class='timestamp'>27. 11. 2015, 15:00</small>
   </div>
 </div>
</div>
</li>

<li class='notification'>
<div class='media'>
 <div class='media-left'>
   <div class='media-object'>
     <img data-src='holder.js/50x50?bg=cccccc' class='img-circle' alt='Name'>
   </div>
 </div>
 <div class='media-body'>
   <strong class='notification-title'><a href='#'>Nikola Tesla</a> resolved <a href='#'>T-14 - Awesome stuff</a></strong>

   <p class='notification-desc'>Resolution: Fixed, Work log: 4h</p>

   <div class='notification-meta'>
     <small class='timestamp'>27. 10. 2015, 08:00</small>
   </div>

 </div>
</div>
</li>

<li class='notification'>
<div class='media'>
 <div class='media-left'>
   <div class='media-object'>
     <img data-src='holder.js/50x50?bg=cccccc' class='img-circle' alt='Name'>
   </div>
 </div>
 <div class='media-body'>
   <strong class='notification-title'><a href='#'>James Bond</a> resolved <a href='#''>B-007 - Desolve Spectre organization</a></strong>

   <div class='notification-meta'>
     <small class='timestamp'>1. 9. 2015, 08:00</small>
   </div>

 </div>
</div>
</li>
</ul>
</div>
</div>";
    addToContext("page_header",$header);
    addToContext("page_title","Proyecto Soy Servidor");
}
site_init();

?>

<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <!--<link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>-->
          <script src="public/js/jquery.js"></script>
            <script type="text/javascript" src="public/js/bootstrap.js" ></script>
            <link rel="stylesheet"  href="public/css/bootstrap.css" rel="stylesheet" >
            <link rel="stylesheet" href="public/css/datatable-bootstrap.min.css" type="text/css">
            <link rel="stylesheet" href="public/css/datatable.min.css" type="text/css">
            <link rel="stylesheet" href="public/css/bootstrap-notifications.css" type="text/css">
            <link rel="stylesheet" href="public/css/bootstrap-dropmenu.css" type="text/css">
            <script type="text/javascript" src="public/js/datatable.jquery.js"></script>
            <script type="text/javascript" src="public/js/datatable.js"></script>
            {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
            {{endfor css_ref}}
        </head>
        <body>
          <h1>{{dia}}</h1>
          <div class="btn-group dropdown dropdown-notifications sw-open">
    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      <i data-count="3" class="glyphicon glyphicon-bell notification-icon"></i>
      <span class="caret"></span>
    </button>

    <div class="dropdown-container">
     <div class="dropdown-toolbar">
        <div class="dropdown-toolbar-actions">
          <a href="#"><i class="glyphicon glyphicon-search"></i> View All</a>
        </div>
        <h3 class="dropdown-toolbar-title">Recent Notifications  (3)</h3>
      </div><!-- /dropdown-toolbar -->

      <ul class="dropdown-menu notifications">
        <li class="notification">
     <div class="media">
       <div class="media-left">
         <div class="media-object">
           <img data-src="holder.js/50x50?bg=cccccc" class="img-circle" alt="Name">
         </div>
       </div>
       <div class="media-body">
         <strong class="notification-title"><a href="#">Dave Lister</a> commented on <a href="#">DWARF-13 - Maintenance</a></strong>
         <p class="notification-desc">I totally don't wanna do it. Rimmer can do it.</p>

         <div class="notification-meta">
           <small class="timestamp">27. 11. 2015, 15:00</small>
         </div>
       </div>
     </div>
 </li>

 <li class="notification">
     <div class="media">
       <div class="media-left">
         <div class="media-object">
           <img data-src="holder.js/50x50?bg=cccccc" class="img-circle" alt="Name">
         </div>
       </div>
       <div class="media-body">
         <strong class="notification-title"><a href="#">Nikola Tesla</a> resolved <a href="#">T-14 - Awesome stuff</a></strong>

         <p class="notification-desc">Resolution: Fixed, Work log: 4h</p>

         <div class="notification-meta">
           <small class="timestamp">27. 10. 2015, 08:00</small>
         </div>

       </div>
     </div>
 </li>

 <li class="notification">
     <div class="media">
       <div class="media-left">
         <div class="media-object">
           <img data-src="holder.js/50x50?bg=cccccc" class="img-circle" alt="Name">
         </div>
       </div>
       <div class="media-body">
         <strong class="notification-title"><a href="#">James Bond</a> resolved <a href="#">B-007 - Desolve Spectre organization</a></strong>

         <div class="notification-meta">
           <small class="timestamp">1. 9. 2015, 08:00</small>
         </div>

       </div>
     </div>
 </li>
      </ul>
    </div>
  </div>
            <div class="contenido">
                {{{page_content}}}
            </div>
            <div class="footer">
                Derechos Reservados 2016
            </div>
        </body>
    </html>

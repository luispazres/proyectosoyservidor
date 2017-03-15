<div class="blob">
  {{dia}}
<h2>Desarrollo de Negocios Web</h2>
<p>
  Este es un simple ejemplo de como podemos utilizar php y los conceptos de un patrón MVC para estructurar un proyecto de negocio web usando un esquema funcional. El patrón "Modelo, Vista Controlador" es utilizando en muchos lenguages de programación por su forma lógica y versatil de organizar el código. Dentro de los beneficios que ofrece el implementarlo se encuentra:
  <ol>
   <li>
     Separación Lógica Módular del Código
   </li>
   <li>
     Adecuado para trabajo en equipo y con sistemas de versionamiento (git)
   </li>
   <li>
     Establecimiento de Responsabilidad de Código
   </li>
  </ol>
</p>
<h2>Componentes del MVC</h2>
<p>
  En este ejemplo se encuentra los siguientes componentes:
  <ol>
    <li>
      <b>index.php</b> Contiene Toda la lógica de enrutamiento, solo por este punto de entrada es que el sistema completo atiende peticiones.
    </li>
    <li>
      <b>controllers/archivo.control.php</b> Es el controlador llamado por el index.php para coordinar las acciones en el sistema.
    </li>
    <li>
      <b>models/archivo.model.php</b> Cuando se requiere de acceso a datos, se utilizan estos archivos para encapsular todo acceso a la capa de datos. El controlador es quien se encarga de incluir los modelos necesarios para realizar una acción.
    </li>
    <li>
      <b>views/archivo.view.tpl</b> Son las vistas o plantillas html con marcado especial que permite al controlador mediante un generador ligar los datos de un modelo con las vista que se muestra al usuario final.
    </li>
  </ol>
</p>
<img class="postimage" src="public/imgs/mvcDiagram.svg"/>
<h2>Crear una nueva ruta</h2>
<img class="postimage" src="public/imgs/actividad1.svg"/>
<h2>Estructura Básica de Controlador</h2>
<pre>
    &lt;?php
    /* Example Controller
     * 2015-10-14
     * Created By OJBA
     * Last Modification 2015-10-14 20:04
     */
      //Cargando Plantillero
      require_once("libs/template_engine.php");

      function run(){
        /* require_once("models/entidad.model.php ") */
        /* Procesamiento */
        renderizar("nombrePlantilla", array("page_title"=>"Un Arreglo Con Data"));
      }
      run();
     ?&gt;
</pre>
<h2>Estructura Básica de un Modelo</h2>
<pre>
    &lt;?php
        //modelo de datos de productos
        require_once("libs/dao.php");

        function obtenerUsuario($userName){
            $usuario = array();
            $sqlstr = sprintf("SELECT idusuarios, usuarioemail, usuarionom, usuariopwd,
                                usuarioest, UNIX_TIMESTAMP(usuariofching) as usuariofching,
                                usuariolstlgn, usuariofatm, usuariofchlp FROM usuarios
                                where usuarioemail = '%s';",$userName);

            $usuario = obtenerUnRegistro($sqlstr);
            return $usuario;
        }

        function insertUsuario($userName, $userEmail,
                               $timestamp, $password){
            $strsql = "INSERT INTO usuarios
                        (usuarioemail, usuarionom, usuariopwd,
                        usuarioest, usuariofching,  usuariolstlgn,
                        usuariofatm, usuariofchlp)
                       VALUES
                        ('%s', '%s','%s','ACT', FROM_UNIXTIME(%s) , null, 0, null);";
            $strsql = sprintf($strsql, valstr($userEmail),
                                        valstr($userName),
                                        $password,
                                        $timestamp);

            if(ejecutarNonQuery($strsql)){
                return getLastInserId();
            }
            return 0;
        }
     ?&gt;
</pre>
<h2>Estructura Básica de una Vista</h2>
<pre>
    &lt;h1&gt;Lo sentimos la página que usted ha
     solicitado no está disponible.&lt;/h1&gt;
    &lcub;&lcub;if showErrors&rcub;&rcub;
        &lt;ul&gt;
            &lcub;&lcub;foreach errors&rcub;&rcub;
                &lt;li&gt;&lcub;&lcub;error_msg&rcub;&rcub;&lt;/li&gt;
            &lcub;&lcub;endfor errors&rcub;&rcub;
        &lt;/ul&gt;
    &lcub;&lcub;endif showErrors&rcub;&rcub;
</pre>
</div>

<?php
    //modelo de datos de usuarios
    require_once("libs/dao.php");

   /*Obtiene los datos del usuario*/
    function obtenerUsuario($userName){
        $usuario = array();
        $sqlstr = sprintf("SELECT usuarioCodigo, usuarioNombre, usuarioApellido, usuarioCorreo, usuarioContrasenia, rolCodigo FROM tblusuarios where usuarioCorreo = '%s';",$userName);

      /* $row=mysql_fetch_array($usuario);

        if($row['rolCodigo']==1){//Administrador
          header("Location:index.php?page=servicios");
        }else if($row['olCodigo']==2){
          header("Location:index.php?page=listadoEmpresa");

        }else{
          echo "1";
        }
*/
        $usuario = obtenerUnRegistro($sqlstr);
        return $usuario;
    }


    function obtenerUsuarios(){
    $usuarios = array();
    $sqlstr =  sprintf("SELECT tblusuarios.usuarioCodigo,tblusuarios.usuarioNombre,tblusuarios.usuarioApellido,tblusuarios.usuarioCorreo, tblroles.rolNombre 'Cargo' from tblusuarios  inner join tblroles on
    tblusuarios.rolCodigo=tblroles.rolCodigo;");
    $usuarios =  obtenerRegistros($sqlstr);
    return $usuarios;
    }


 /*Registra un usuario*/
  function insertarRegistro($userName,$apellido,$Email, $password,$rol){
      $strsql = "INSERT INTO tblusuarios
                  (usuarionombre, usuarioapellido ,usuariocorreo, usuariocontrasenia,rolCodigo)
                 VALUES
                  ('%s', '%s', '%s','%s','%d');";
      $strsql = sprintf($strsql, valstr($userName),$apellido,$Email,
                                  $password,$rol);

      if(ejecutarNonQuery($strsql)){
          return getLastInserId();
      }

    }

    /*Modifica usuario*/
    function actualizarUsuario($usuarioCodigo,$usuarioanombre,$usuarioApellido, $usuariocorreo,$rol){
      $updSql = "UPDATE tblusuarios set usuarioNombre='%s', usuarioApellido='%s', usuarioCorreo= '%s', rolCodigo= '%d' where usuarioCodigo= %d;";
      $result = ejecutarNonQuery(sprintf($updSql,$usuarioanombre,$usuarioApellido,$usuariocorreo,$rol,$usuarioCodigo ));
      return ($result > 0) && true;
    }


        function borrarUsuario($usuarioCodigo){
        $usuarios = array();
        $sqlstr = sprintf("delete from tblusuarios where usuarioCodigo= '%d'",$usuarioCodigo);

        if(ejecutarNonQuery($sqlstr)){
            return getLastInserId();
        }

        return $contratos;
        }


        function modificarContrasenia($registro,$codigo){
          $query = "SELECT * FROM tblusuarios WHERE usuarioCodigo = '%d';";
          $query = sprintf($query,$codigo);
          $result = obtenerUnRegistro($query);
          $contraseniaActual = $result["usrpwd"];

          if($contraseniaActual == md5($registro["txtPwdAnt"])){
            if($registro["txtPwdNew"] == $registro["txtPwdCof"]){

              $query = "UPDATE tblusuarios SET usuarioContrasenia='%s' WHERE usuariocorreo ='%s';";
              $query = sprintf($query,md5($registro["txtPwdNew"]),$codigo);

              if (ejecutarNonQuery($query)){
                //CONTRASEÑA CAMBIADA
                return 1;
              }else {
                //ERROR EN LA CONSULTA
                return 4;
              }
            }else {
              //CONTRASEÑA NUEVA Y CONFIRMAR NO COINCIDEN
              return 3;
            }

          }else {
            //CONTRASEÑA ACTUAL NO CONICIDE CON LA INGRESADA
            return 2;
          }

        }

     //Restablece la contrasena
    function actualizarRegistro($Email, $password){
     $updSql = "update tblusuarios set usuariocontrasenia='%s' where usuariocorreo='%s';";
     $result = ejecutarNonQuery(sprintf($updSql,$password,$Email));
     return ($result > 0) && true;
   }

    function obtenerCodigo($usuarioCodigo){
      $registro = array();
      $sqlstr = "select * from tblusuarios where usuarioCodigo=%d;";
      $registro = obtenerUnRegistro(sprintf($sqlstr,$usuarioCodigo));
      return $registro;
    }
?>

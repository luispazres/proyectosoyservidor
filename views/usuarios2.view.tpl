<form action="index.php?page=usuarios2&mode={{mode}}&usuarioCodigo={{usuarioCodigo}}" method="post">
  <table style="width:640px;margin:1em auto;">
    {{datos}}
    <tr>
      <td style="width:220px">
        <b>Código</b>
      </td>
      <td>
        {{if enabled}}<!-- Cuando se va a borrar no se actualizaran los datos-->
          <input type="text" name="usuarioCodigo" value="{{usuarioCodigo}}"
            placeholder="Un Número" />
        {{endif enabled}}

        {{ifnot enabled}}
          <b>{{usuarioCodigo}}</b>
          <input type="hidden" name="usuarioCodigo" value="{{usuarioCodigo}}"/>
        {{endifnot enabled}}
      </td>
    </tr>


    <tr>
      <td>
        <b>Nombre:</b>
      </td>
      <td>
                {{ifnot deleting}}
                  <input type="text" name="usuarioNombre" value="{{usuarioNombre}}"/>
                {{endifnot deleting}}

                {{if deleting}}
                    <b>{{usuarioNombre}}</b>
                    <input type="hidden" name="usuarioNombre" value="{{usuarioNombre}}"/>
                {{endif deleting}}
      </td></br>
    </tr>


    <tr>
      <td>
        <b>Apellido:</b>
      </td>
      <td>
                {{ifnot deleting}}
                  <input type="text" name="usuarioApellido" value="{{usuarioApellido}}"/>
                {{endifnot deleting}}

                {{if deleting}}
                    <b>{{usuarioApellido}}</b>
                    <input type="hidden" name="usuarioApellido" value="{{usuarioApellido}}"/>
                {{endif deleting}}
      </td></br>
    </tr>


    <tr>
      <td>
        <b>Correo:</b>
      </td>
      <td>
                {{ifnot deleting}}
                  <input type="text" name="usuarioCorreo" value="{{usuarioCorreo}}"/>
                {{endifnot deleting}}</br>

                {{if deleting}}
                    <b>{{usuarioCorreo}}</b>
                    <input type="hidden" name="usuarioCorreo" value="{{usuarioCorreo}}"/>
                {{endif deleting}}
      </td></br>
    </tr>


        <tr>
          <td>
            <b>Cargo:</b>
          </td>
          <td>
		    {{ifnot deleting}}
            <select class="" name="rolCodigo" id="rolCodigo">
              {{foreach roles}}
              <option value="{{rolCodigo}}" >{{rolNombre}}</option>
              {{endfor roles}}
            </select></br>
			  {{endifnot deleting}}

			    {{if deleting}}
           <b>{{rolNombre}}</b>
           <input type="hidden" name="rolCodigo" value="{{rolNombre}}"/>
        {{endif deleting}}
          </td></br>
        </tr>
 </br>

    <tr>
      <td colspan="2" style="text-align:right">
        {{if deleting}}
            <input type="submit" class="btn btn-primary" value="Eliminar" name="btnEliminar" />
        {{endif deleting}}
        {{ifnot deleting}}
            <input type="submit"  class="btn btn-primary" value="Guardar" name="btnGuardar" />
        {{endifnot deleting}}
        &nbsp;
        <a href="index.php?page=usuarios" class="btn btn-warning" role="button">Cancelar</a>
      </td>
    </tr>
  </table>
</form>

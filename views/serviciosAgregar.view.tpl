<form action="index.php?page=serviciosAgregar&mode={{mode}}&ServicioCodigo={{ServicioCodigo}}" method="post">
  <table style="width:640px;margin:1em auto;">
    <tr>
      <td style="width:220px">
        <b>Código</b>
      </td>
      <td>
        <!-- Si es insertado se debe permitir ingresar el código -->
        {{if enabled}}
          <input type="text" name="ServicioCodigo" value="{{ServicioCodigo}}"
            placeholder="Un Número" />
        {{endif enabled}}
        <!-- Si no es insertado no se debe permitir ingresar el código-->
        {{ifnot enabled}}
          <b>{{ServicioCodigo}}</b>
          <input type="hidden" name="ServicioCodigo" value="{{ServicioCodigo}}"/>
        {{endifnot enabled}}
      </td>
    </tr>


    <tr>
      <td>
        <b>Nombre del Servicio:</b>
      </td>
      <td>
                {{ifnot deleting}}
                  <input type="text" name="ServicioNombre" value="{{ServicioNombre}}"/>
                {{endifnot deleting}}
                <!-- Cuando se va a borrar no se debe actualizar los datos -->
                {{if deleting}}
                    <b>{{ServicioNombre}}</b>
                    <input type="hidden" name="ServicioNombre" value="{{ServicioNombre}}"/>
                {{endif deleting}}
      </td>
      <hr>
    </tr>
    <tr>
      <td colspan="2" style="text-align:right">
        {{if deleting}}
            <input type="submit" class="btn btn-primary" value="Eliminar" name="btnEliminar" />
        {{endif deleting}}
        {{ifnot deleting}}
            <input type="submit"  class="btn btn-primary" value="Guardar" name="btnGuardar" />
        {{endifnot deleting}}
        &nbsp;
        <a href="index.php?page=servicios" class="btn btn-warning" role="button">Cancelar</a>
      </td>
    </tr>
  </table>
</form>

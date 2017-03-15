<h1>Empresa</h1>
<form action="index.php?page=empresa2&mode={{mode}}&EmpresaCodigo={{EmpresaCodigo}}" method="post">
  <table style="width:640px;margin:1em auto;">
    <tr>
      <td style="width:220px">
        <b>Código</b>
      </td>
      <td>
        <!-- Si es insertado se debe permitir ingresar el código -->
        {{if enabled}}
          <input type="text" name="EmpresaCodigo" value="{{EmpresaCodigo}}"
            placeholder="Un Número" />
        {{endif enabled}}
        <!-- Si no es insertado no se debe permitir ingresar el código-->
        {{ifnot enabled}}
          <b>{{EmpresaCodigo}}</b>
          <input type="hidden" name="EmpresaCodigo" value="{{EmpresaCodigo}}"/>
        {{endifnot enabled}}
      </td>
    </tr>


    <tr>
      <td>
        <b>Nombre de Empresa:</b>
      </td>
      <td>
                {{ifnot deleting}}
                  <input type="text" name="EmpresaNombre" value="{{EmpresaNombre}}"/>
                {{endifnot deleting}}
                <!-- Cuando se va a borrar no se debe actualizar los datos -->
                {{if deleting}}
                    <b>{{EmpresaNombre}}</b>
                    <input type="hidden" name="EmpresaNombre" value="{{EmpresaNombre}}"/>
                {{endif deleting}}
      </td></br>
    </tr>





  <!-- Cuando se va a borrar no se debe actualizar los datos -->
    <tr>
      <td>
        <b>Nombre Representante Legal:</b>
      </td>
      <td>
                {{ifnot deleting}}
                  <input type="text" name="EmpresaRepresentante" value="{{EmpresaRepresentante}}"/>
                {{endifnot deleting}}
                <!-- Cuando se va a borrar no se debe actualizar los datos -->
                {{if deleting}}
                    <b>{{EmpresaRepresentante}}</b>
                    <input type="hidden" name="EmpresaRepresentante" value="{{EmpresaRepresentante}}"/>
                {{endif deleting}}
      </td></br>
    </tr>
  <!-- Cuando se va a borrar no se debe actualizar los datos -->

    <tr>
      <td>
        <b>Nombre Comercial:</b>
      </td>
      <td>
                {{ifnot deleting}}
                  <input type="text" name="EmpresaComercial" value="{{EmpresaComercial}}"/>
                {{endifnot deleting}}</br>
                <!-- Cuando se va a borrar no se debe actualizar los datos -->
                {{if deleting}}
                    <b>{{EmpresaComercial}}</b>
                    <input type="hidden" name="EmpresaComercial" value="{{EmpresaComercial}}"/>
                {{endif deleting}}
      </td></br>
    </tr>

  <!-- Cuando se va a borrar no se debe actualizar los datos -->
        <tr>
          <td>
            <b>Nombre RTN:</b>
          </td>
          <td>
                    {{ifnot deleting}}
                      <input type="text" name="EmpresaRTN" value="{{EmpresaRTN}}"/>
                    {{endifnot deleting}}
                    <!-- Cuando se va a borrar no se debe actualizar los datos -->
                    {{if deleting}}
                        <b>{{EmpresaRTN}}</b>
                        <input type="hidden" name="EmpresaRTN" value="{{EmpresaRTN}}"/>
                    {{endif deleting}}
          </td>
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
        <a href="index.php?page=listadoEmpresa" class="btn btn-warning" role="button">Cancelar</a>
      </td>
    </tr>
  </table>
</form>

</form>

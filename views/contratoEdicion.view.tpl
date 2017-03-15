<form action="index.php?page=contratoEdicion" method="post">
  <h1>Contrato</h1>
  <table style="width:640px;margin:1em auto;">
    <tr>
      <td style="width:220px">
        <b>Código:</b>
      </td>
      <td>

        <input type="hidden" name="txtEmpresaCodigo" value="{{empresaCodigo}}">
        <input type="hidden" name="txtCodContrato" value="{{contratoCodigo}}">
         {{contratoCodigo}}

      </td>
    </tr>


    <tr>
      <td>
        <b>Tipo de Servicio:</b>
      </td>
      <td>
              <select class="" id="txtServicio" name="txtServicio">
              {{foreach servicio}}
              <option value="{{ServicioCodigo}}">{{ServicioNombre}}</option>
            {{endfor servicio}}
                  </select>
      </td></br>
    </tr>
    <tr>
      <td>
        <b>Vigencia de Contrato:</b>
      </td>
      <td>
                <select class="" name="txtVigencia" id="txtVigencia">
                  {{foreach vigencias}}
                    <option value="{{VigenciaCodigo}}">{{VigenciaMeses}}</option>
                  {{endfor vigencias}}
                </select>
      </td></br>
    </tr>

    <tr>
      <td>
        <b>Valor del contrato:</b>
      </td>
      <td>

            <input type="text" name="ContratoValor" id="ContratoValor" value="{{ContratoValor}}"/>
             {{ContratoValor}}
              </br>
      </td></br>
    </tr>

    <tr>
      <td>
        <b>Fecha Inicial del Contrato:</b>
      </td>
      <td>
            <input type="date" name="ContratoFechaInicio" id="ContratoFechaInicio" value=""/>
              </br>
      </td></br>
    </tr>

        <tr>
          <td>
            <b>Fecha de Vencimiento del Contrato:</b>
          </td>
          <td>

            <input type="date" name="ContratoFechaFinal" id="ContratoFechaFinal" value=""/>
            {{ContratoFechaFinal}}
          </td>
        </tr>


      <td colspan="2" style="text-align:right">
            <input type="submit"  class="btn btn-primary" value="Guardar" name="btnGuardar" />

        &nbsp;
        <a href="index.php?page=VerContratos&mode=Ver&EmpresaCodigo={{empresaCodigo}}" class="btn btn-warning" role="button">Cancelar</a>
      </td>
    </tr>
  </table>

</form>

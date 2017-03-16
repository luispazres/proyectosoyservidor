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

<script type="text/javascript">
function getMonth(date) {
  var month = date.getMonth() + 1;
  return month < 10 ? '0' + month : '' + month;
}

$('#ContratoFechaInicio').change(function(){
  var vigencia=$("#txtVigencia").val();
  var vigenciaMeses;
  switch (vigencia) {
    case "1":
      vigenciaMeses=3;
      break;
    case "2":
      vigenciaMeses=6;
      break;
    case "3":
      vigenciaMeses=9;
      break;
    case "4":
      vigenciaMeses=12;
      break;
    case "5":
      vigenciaMeses=18;
      break;
    case "6":
      vigenciaMeses=24;
      break;
  }

  var fechaInicial=$("#ContratoFechaInicio").val();
  var date = new Date();
  var dateArray = fechaInicial.split("-");
  date.setFullYear(parseInt(dateArray[0]));
  date.setMonth(parseInt(dateArray[1])-1);
  date.setDate(parseInt(dateArray[2]));
  var fechaFinal=new Date();
  fechaFinal.setFullYear(date.getFullYear());
  fechaFinal.setDate(date.getDate());
  fechaFinal.setMonth(date.getMonth()+parseInt(vigenciaMeses));

  var anio = String(fechaFinal.getFullYear());
  var month= String(getMonth(fechaFinal));
  var dia= String(fechaFinal.getDate());
  var res= anio.concat("-",month,"-",dia);

  $("#ContratoFechaFinal").val(res);

  console.log(res);
});
</script>

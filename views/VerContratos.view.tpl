<h1>Directorio de Contratos</h1>
<hr/>
<!---------------------------------------------------------------->
<table style="width:80%; margin:25px">
  <tr>
    <th>Contrato Codigo</th>
    <th>
      Fecha de Ingreso
    </th>
    <th>
      Fecha de Vencimiento
    </th>
    <th>
      Contrato vigencia
    </th>
    <th>
      Valor Contrato
    </th>
    <th>
      Tipo de Servicio
    </th>
    <th>
      Nombre del Documento
    </th>
    <th>
      &nbsp;
    </th>
  </tr>
  {{foreach tblcontratos}}
  <form method="post" action="index.php?page=VerContratos" >
      <tr>
        <td>{{ContratoCodigo}}</td>
        <td>
          {{ContratoFechaInicio}}
        </td>
        <td>
          {{ContratoFechaFinal}}
        </td>
        <td>
          {{VigenciaMeses}}
        </td>
        <td>
          {{ContratoValor}}
        </td>
        <td>
          {{TipodeServicio}}
        </td>
        <td>
          <a href="index.php?page=vista&DocumentoDireccion={{DocumentoDireccion}}">{{NombredelContrato}}</a>
        </td>
        <td>
          <a href="index.php?page=VerContratos&DocumentoDireccion={{DocumentoDireccion}}" class="btn" title="Descargar Contrato" role="button"
          >
            <span class="glyphicon glyphicon-download-alt"></span>
          </a>
          <a class="btn" title="Editar contrato" role="button"
            href="index.php?page=contratoEdicion&mode=UPD&ContratoCodigo={{ContratoCodigo}}&EmpresaCodigo={{EmpresaCodigo}}"
          >
            <span class="glyphicon glyphicon-edit"></span>
          </a>
          <a class="btn" title="Eliminar contrato" role="button"
            href="index.php?page=VerContratos&mode=DLT&ContratoCodigo={{ContratoCodigo}}&EmpresaCodigo={{EmpresaCodigo}}"
          >
            <span class="glyphicon glyphicon-trash"></span>
          </a>
        </td>
      </tr>
      </form>
  {{endfor tblcontratos}}
</table>
<a class="btn btn-primary pull-right" role="button"
  href="index.php?page=listadoEmpresa&mode=INS">
      <span class="glyphicon glyphicon-plus"></span>
       &nbsp;Regresar
</a>

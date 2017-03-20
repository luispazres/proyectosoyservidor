<table class="table table-list-search" id="example-table" >
  <thead>
  <tr>
    <th>
    Codigo
    </th>
    <th>
     Fecha de Ingreso
    </th>
    <th>
      Fecha de Vencimiento
    </th>
    <th>
      Nombre de la Empresa
    </th>
    <th>
      Tipo de Servicio
    </th>
    <th>
      &nbsp;
    </th>
  </tr>
    </thead>
    <tbody>

  {{foreach tblcontratos}}

  <form method="post" action="index.php?page=alertaContratos" >
      <tr>
        <td>
          {{ContratoCodigo}}
        </td>
        <td>
          {{ContratoFechaInicio}}
        </td>
        <td>
          {{ContratoFechaFinal}}
        </td>
        <td>
          {{NombreEmpresa}}
        </td>
        <td>
          {{TipodeServicio}}
        </td>
      </tr>
        </form>
  {{endfor tblcontratos}}
    </tbody>
</table>

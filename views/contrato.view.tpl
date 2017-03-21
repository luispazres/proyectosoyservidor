<center><p class="section-subheader"></p>
  <section id="intro1">
<h1>Nuevo Contrato</h1></br>
<section class="container">
  <h1>{{alerta}}</h1>
              <form action="index.php?page=contrato&EmpresaCodigo={{datos}}"  method="post" class="tm-contact-form" enctype="multipart/form-data">
                <input type="hidden" name="contratoCodigo" value="{{ContratoCodigo}}">
                <label> EmpresaCodigo:</label>
                <input type="text" name="txtCodEmpresa" id="txtCodEmpresa" value="{{datos}}" >
                <br/>
                <label> Valor del Contrato:</label>
                <input type="text" name="txtValor" id="txtValor" value="{{txtValor}}" >
                <br/>
                    <label> Tipo de Servicio:</label>
                    <select class="" id="txtServicio" name="txtServicio">
                      {{foreach servicio}}
                      <option value="{{ServicioCodigo}}">{{ServicioNombre}}</option>
                      {{endfor servicio}}
                    </select>

                    <br/>
                    <label>Vigencia de Contrato:</label>
                    <select class="" name="txtVigencia" id="txtVigencia">
                      {{foreach vigencia}}
                      <option value="{{VigenciaCodigo}}">{{VigenciaMeses}}</option>
                      {{endfor vigencia}}
                    </select>
                    </br>
                      <label>Fecha Inicial del Contrato:</label>
                      <input type="date"
                        name="fechaInicial"
                        id="fechaInicial"
                         value="{{fechaInicial}}"/>
                      </br>
                      <label>Fecha de Vencimiento Contrato:</label>
                      <input type="date"
                        name="fechaVencimiento"
                        id="fechaVencimiento"
                         value="{{fechaVencimiento}}"/>
                      </br>
                    <hr>

                      <input type="file"
                        name="userfile[]"
                        id="userfile"/></br>
                        <br>
                    <div class="subirArchivos">

                    </div>
                      </br>
                      </br>
                      <input type="button" id="btnSubirOtro" name="btnSubirOtro" value="Subir Otro Documento">
                    </br>
                    <hr>
                      <input type="submit"
                          value="Guardar"
                          class="submit1"
                          onclick="return validar();"
                          name="btnGuardar"/>

                          <input type="submit"
                              value="Cancelar"
                              class="submit1"
                              onclick="return validar();"
                              name="btnCancelar"/>
                  </br></br>
                </form>
          </center>
  </section>
</section>
<script type="text/javascript">
  $("#btnSubirOtro").click(function(){
      $(".subirArchivos").append("<input type='file' name='userfile[]'' id='userfile'/></br> <input type='submit' id='btnSubir' name='btnSubir' value='Subir archivo'><br>");
  });

  function getMonth(date) {
    var month = date.getMonth() + 1;
    return month < 10 ? '0' + month : '' + month;
  }

  $('#fechaInicial').change(function(){
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

    var fechaInicial=$("#fechaInicial").val();
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

    $("#fechaVencimiento").val(res);

    console.log(res);
});
</script>

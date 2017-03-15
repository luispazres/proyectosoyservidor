<center><p class="section-subheader"></p>
  <section id="intro1">
<h1>Nuevo Contrato</h1></br>
<section class="container">
  <h1>{{probando}}

</h1>
              <form action="index.php?page=contrato"  method="post" class="tm-contact-form" enctype="multipart/form-data">
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
</script>

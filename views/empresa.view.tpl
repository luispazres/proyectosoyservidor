{{if mostrarErrores}}
<ul class="error">
    {{foreach errores}}
        <li>{{errmsg}}</li>
    {{endfor errores}}
</ul>
{{endif mostrarErrores}}

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <script src="public/css/c.js"></script>
    <title></title>
  </head>
  <body>
<center><p class="section-subheader"></p>
  <section id="intro1">
<h1>Empresa</h1>
<section class="container">

              <form action="index.php?page=empresa"  method="post" class="tm-contact-form">
                    <label> Nombre de Empresa:</label>
                    <input type="text"
                            name="txtNombre"
                            id="txtNombre"
                            value="{{txtNombre}}"/>
                    <br/>
                    <label>Nombre del Representante Legal:</label>
                    <input type="text"
                            name="txtRepresentante"
                            id="txtRepresentante"
                            value="{{txtRepresentante}}"/>
                    </br>
                      <label>Nombre Comercial:</label>
                      <input type="text"
                        name="txtComercial"
                        id="txtComercial"
                        placeholder="Honduras S.A"
                         value="{{txtComercial}}"/>
                      </br>
                      <label>RTN:</label>
                          <input type="text"
                          name="txtRTN"
                          id="txtRTN"
                          value="{{txtRTN}}"/>
                      </br>
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
</body>
</html>

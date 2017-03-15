
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
    <h1> Registrate</h1>
    <section class="container">

                  <form action="index.php?page=registrate"  method="post" class="tm-contact-form">
                        <label> Nombre:</label>
                        <input type="text"
                                name="txtUserName"
                                id="txtUserName"
                                placeholder="Nombre..."
                                value="{{txtUserName}}"/>
                        <br/>
                        <label> Apellido:</label>
                        <input type="text"
                                name="txtApellido"
                                id="txtApellido"
                                value="{{txtApellido}}"/>
                        <br/>
                        <label>Email:</label>
                        <input type="text"
                                name="txtEmail"
                                id="txtEmail"
                                placeholder="example@gmail.com"
                                value="{{txtEmail}}"/>
                        </br>
                        <label>Cargo:</label>
                        <select class="" name="txtCargo" id="txtCargo">
                          {{foreach rol}}
                          <option value="{{rolCodigo}}" {{seleccionado}}>{{rolNombre}}</option>
                          {{endfor rol}}
                        </select></br>
                          <label>Contraseña:</label>
                          <input type="password"
                            name="password"
                            id="password"
                            placeholder="x12589Ska"
                             value="{{password}}"/>
                          </br>
                          <label>Confirme Contraseña:</label>
                              <input type="password"
                              name="txtPasswordCnf"
                              id="txtPasswordCnf"
                              placeholder="x12589Ska"
                              value="{{txtPasswordCnf}}"/>
                          </br>
                          <input type="submit"
                              value="Regístrate"
                              class="submit1"
                              onclick="return validar();"
                              name="btnRegistrar"/>

                         <input type="submit"
                          value="Cancelar"
                          class="submit1"
                          onclick="return validar();"
                          name="btnCancelar"/>

                  </br>
                    </br>
                    </form>
              </center>
      </section>
</section>
  </body>
</html>

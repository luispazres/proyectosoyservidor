<div align="center">
<br>
<br>
<div class="newpro">
<form action="index.php?page=restablecerContrasena" method="post">
  <table>
  </table>
  <table>
  <label class="col4">Correo:</label><input class="col8" type="text" name="txtEmail"  value="{{txtEmail}}" />
</table>
  <table>
      <label class="col4">Nueva Contraseña: </label><input class="col8" type="password" name="password" value="{{password}}" />
    </table>
      <table>
    <label class="col4">Confirmar Contraeña:</label><input class="col8" type="password" name="txtPasswordCnf" value="{{txtPasswordCnf}}"/>
  </table>
</div>
      <div align="center">
      <table class="col12">
    <div class="boton">
    <input type="submit" name="btnGuardar" value="Guardar" />
    <input type="hidden" name="returnUrl" value="{{returnUrl}}"/>
    </div>
  </table>
</div>
</form>

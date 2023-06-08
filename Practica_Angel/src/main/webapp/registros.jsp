<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro</title>
<h1> PROCEDA A LLENAR LA TABLA  <h1>
<link rel="stylesheet" href="sty_registro.css">
<link rel="shortcut icon" href="imagen/angel.png" type="image/x-icon">
</head>
<body>

<header>



 <div class="container">
<div class="info">
        
      </div>

<div class="form">
    <form action="respuesta.jsp"  method="post" >
        <table border="1">
        <tr><td>Nombre</td><td><input type="text" name="txtNombre"/></td></tr>
        <tr><td>Cedula</td><td><input type="text" name="txtCedula" maxlength="10"/></td></tr>
        <tr><td>Estado_Civil</td><td> <select name="cmbECivil"> <option value="Soltero">Soltero</option>
        <option value="Casado">Casado</option> <option value="Divorciado">Divorciado</option> 
        <option value="Viudo">Viudo</option></select></td></tr>
        <tr><td>Lugar_residencia</td><td>
		<input type="radio" name="rdResidencia" value="Sur"/>Sur 
		<input type="radio" name="rdResidencia" value="Norte"/>Norte
		<input type="radio" name="rdResidencia" value="Centro"/>Centro</td></tr>
        <tr><td>Foto</td><td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png" /></td></tr>
        <tr><td>Archivo_pdf</td><td><input type="file" name="fileArchivo" accept=".pdf" /></td></tr>
        <tr><td>Ingrese_Edad</td><td><input type="text" name="edad"maxlength="2"/></td></tr>
       <tr><td>Mes y año de nacimiento: </td><td> <input type="date" name="fecha"/> </td></tr>
        <tr><td> Color Favorito</td><td> <input type="color" name="colorFavorito"/></td></tr>
        <tr><td> <input type="submit" /> </td><td><input type="reset" /></td></tr>
    
        </table>
        <h3>*Campo obligatorio</h3>
    </form>
    </div>
    </div>
    
</header>
</body>
</html>
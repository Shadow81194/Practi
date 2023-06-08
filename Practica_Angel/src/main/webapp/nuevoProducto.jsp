<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form action="respuesta.jsp"  method="post" >
        <h2>Nuevo Producto</h2>
        <p>
          Ingrese su Nuevo Producto
        </p>
        <div class="inputs">
         
        Categoria <select name="cmbECivil"> <option value="Opción">Elija su Opción</option>
        <option value="Ropa">Ropa</option>
        <option value="Armas">Armas</option> 
        <option value="Comida">Comida</option> 
        <option value="Dulces">Dulces</option>
        <option value="Almohadas">Almohadas</option>
        </select>
        <br>
        <br>
        Nombre:   <input type="text" name="txtNombre" required/> <br>
        <br>
		Cantidad: <input type="text" name="Cantidad" maxlength="5" required/> <br>
		 <br>
		Precio:   <input type="text" name="Precio" maxlength="10" required/> <br>
		 <br>
		Imagen del Producto<input type="file" name="fileFoto" accept=".jpg" required/><br>
		
		<br>
          <input type="submit" />
        </div>
        
        </form>
        
     
</body>
</html>
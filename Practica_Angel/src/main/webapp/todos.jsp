	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Busqueda de Productos</title>
<link rel="stylesheet" href="style_productos.css">
</head>
<body>
<header class="header" >
<div class="menu container">
 		<a href="" class="GANDHI">logo</a>
 			<input type="checkbox" id="menu" />
 <label for="menu">
 	<img src="imagen/" class="menu-icono" alt=""></img>
 </label>
 <nav class="navdar">
 <ul>
 		
 		<li><a href="busqueda.jsp">Busqueda de Productos  </a></li>
   		<li><a href="catalogo.jsp">Catalogo </a></li>
   		
    	
 </ul>
 </nav>
 </div>
 
 <div class="header-content container">
 	<div class="header-txt"> 
 	<h1>Nuestro <br> Productos</h1>
 <p>
		   " No Encuentre cliente para tus Productos, Encuentra Productos para tus Clientes " <br>
			Lo que nos diferencia como compañia es que queremos dar soluciones
 </p>
 
 
 <a href="" class="btn-1">Informacion</a>
 </div>
</header>
	
	 <section>
                    <%
                    	productos p = new productos();
                    	String tabla = p.consultarTodo();
                    	out.print(tabla);
                    %>
                </section>
<footer>
<div class="footer-txt">
	<p>
		DIRECCION: TRINITARIA, ISLA, 01194, GUAYAQUIL TELEFONO: 0954452865
	</p>
</div>
</footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Busqueda de Productos</title>
<link rel="stylesheet" href="sty_cata.css">
<link rel="shortcut icon" href="imagen/angel.png" type="image/x-icon">
</head>
<body>
<header class="header" >
<div class="menu container">
 		<a href="" class="logo">GANDHI</a>
 			<input type="checkbox" id="menu" />
 <label for="menu">
 	<img src="imagen/" class="menu-icono" alt=""></img>
 </label>
 <nav class="navdar">
 <ul>
 		<li><a href="productos.jsp">Ver los Productos  </a></li>
   		<li><a href="busqueda.jsp">Buscar por Competiccion </a></li>

 </ul>
 </nav>
 </div>
 
 <div class="header-content container">
 	<div class="header-txt"> 
 	<h1>Nuestro  <br> Catalogo</h1>
 <p>
		   " No Encuentre cliente para tus Productos, Encuentra Productos para tus Clientes " <br>
			Lo que nos diferencia como compañia es que queremos dar soluciones	
 </p>
 
 </div>
</header>
	
	 <main>
                    <%
                   
                    productos p = new productos();
                	String tabla = p.consultarTodo();
                	out.print(tabla);
                    	
                    %>
               </main>
	
<footer>
<div class="footer-txt">
	<p>
		DIRECCION: TRINITARIA, ISLA, 01194, GUAYAQUIL TELEFONO: 0954452865
	</p>
</div>
</footer>
</body>
</html>
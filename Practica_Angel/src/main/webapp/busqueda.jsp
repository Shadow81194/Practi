	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Busqueda de Productos</title>
<link rel="stylesheet" href="sty_busq.css">
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
 		<li><a href="productos.jsp">Ver los Productos </a></li>
   		<li><a href="catalogo.jsp">Ver los Catalogo </a></li>
    	
 </ul>
 </nav>
 </div>
 
 <div class="header-content container">
 	<div class="header-txt"> 
 	<h1>Busqueda de  <br> Nuestro Productos</h1>
 <p>
		   " No Encuentre cliente para tus Productos, Encuentra Productos para tus Clientes " <br>
			Lo que nos diferencia como compañia es que queremos dar soluciones	
 </p>
 
 </div>
</header>
	
	 <div class="agrupar" style="text-align: center;"> 
            	<tr><th ><h3>ESCOJA LA COMPETICION</h3></th></tr> 
            	<br>                   
                 <form action="categoria.jsp" method="post">
                 <table>
                 <tr>
                 <%
                 categoria pro = new categoria();
        		 out.println(pro.mostrarCategoria()); 
       			 %>
       			</tr>
       			<tr><td>
       			<input type="submit"/>
       			 </td>
       			  </tr>
       			  </table>
       			  </form>

            </div>
	
<footer>
<div class="footer-txt">
	<p>
		DIRECCION: TRINITARIA, ISLA, 01194, GUAYAQUIL TELEFONO: 0954452865
	</p>
</div>
</footer>
</body>
</html>
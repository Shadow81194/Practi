<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" session="true" import="com.productos.seguridad.*"%>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>MENU</title>
	<link rel="stylesheet" type="text/css" href="estilos.css">
</head>


<%

String usuario;
HttpSession sesion = request.getSession();
 if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
 {
 	%>
 	<jsp:forward page="login.jsp">
 	<jsp:param name="error" value="Debe registrarse en el sistema."/>
 	</jsp:forward>
 	<% 
 	
 }else{
 	
	 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
	 int perfil=(Integer)sesion.getAttribute("perfil");
	 %>
	<h1>Sitio Privado de Productos</h1>
	
	
	</h4>
	<br>
	
	<body>
	
	<header>
	<nav>
	<%
	pagina pag = new pagina();
	String menu=pag.mostrarMenu(perfil);
	out.print(menu);
	%>	
	</nav>
	</header>
	</body>
<%
}
%>
</html>
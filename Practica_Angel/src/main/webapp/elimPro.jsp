<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<main>
<h1>Eliminar Producto</h1>
<h4>Bienvenido

</h4>
	<%
		int cod = Integer.parseInt(request.getParameter("cod"));
		productos mp = new productos();
		boolean f = mp.EliminarProducto(cod);
		if(f == true){
			response.sendRedirect("modificarProducto.jsp");
		}
	%>
</main>
</body>
</html>
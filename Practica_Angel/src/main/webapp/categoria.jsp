<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
productos pro = new productos();
//out.println(request.getParameter("cmbCategoria"));
out.println(pro.buscarProductoCategoria(Integer.parseInt(request.getParameter("cmbCategoria"))));%>
</body> 

</html>
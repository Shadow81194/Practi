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
<%
		int cod = Integer.parseInt(request.getParameter("cod"));
		productos mp = new productos();
		mp.ConsulEditarproductos(cod);
	%>
	<form action="editarProductos.jsp" method="post">
		<table>
			<tr>
				<td>Codigo Producto:</td>
				<td><input type="text" name="editarcod" value="<%=cod%>"></td>
			</tr>
			<tr>
				<td>Categoria</td>
				<td><input type="text" name="cat" value="<%=mp.getIdcat() %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Descripcion</td>
				<td><input type="text" name="editardesc" value="<%=mp.getNombre()%>"></td>
			</tr>
			<tr>
				<td>Precio</td>
				<td><input type="text" name="editarprec" value="<%=mp.getPrecio()%>"></td>
			</tr>
			<tr>
				<td>Cantidad</td>
				<td><input type="text" name="editarcant" value="<%=mp.getCantidad()%>"></td>
			</tr>
		</table>
		<br>
		<br> <input type="submit" value="Actualizar">	
	</form>
	</main>
</body>
</html>
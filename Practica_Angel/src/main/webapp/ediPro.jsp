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
		String str_cod = request.getParameter("editarcod");
		int id = Integer.parseInt(str_cod);
		String str_cat = request.getParameter("cat");
		int cat = Integer.parseInt(str_cat);
		String des = request.getParameter("editardesc");
		String str_pre = request.getParameter("editarprec");
		float pre = Float.parseFloat(str_pre);
		String str_cant = request.getParameter("editarcant");
		int can = Integer.parseInt(str_cant);
		productos mp = new productos();
		mp.setId(id);
		mp.setIdcat(cat);
		mp.setNombre(des);
		mp.setCantidad(can);
		mp.setPrecio(pre);
		boolean actualizado = mp.ModificarProducto(mp);
		if(actualizado == true){
			response.sendRedirect("modificarProducto.jsp");
		}else{
			out.print("Algo salio mal");
		}
		
	%>
	</main>
</body>
</html>
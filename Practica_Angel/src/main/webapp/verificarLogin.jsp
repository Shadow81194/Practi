<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.productos.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
usuario usuario=new usuario();
String nlogin=request.getParameter("username");
String nclave=request.getParameter("password");

HttpSession sesion=request.getSession(); //Se crea la variable de sesi�n
boolean respuesta=usuario.verificarUsuario(nlogin,nclave);
if (respuesta)
{
sesion.setAttribute("usuario", usuario.getNombre()); //Se a�ade atributos
sesion.setAttribute("perfil", usuario.getPerfil()); //Se a�ade atributos
response.sendRedirect("menu.jsp"); //Se redirecciona a una p�gina espec�fica
}
else
{
%>
<jsp:forward page="login.jsp">
<jsp:param name="error" value="Datos incorrectos.<br>Vuelva a intentarlo."/>
</jsp:forward>
<%
}
%>


<body>

</body>
</html>
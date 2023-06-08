<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Respuesta</title>
<h1> GRACIA POR REGISTRARSE <h1>
<link rel="stylesheet" href="sty_repuesta.css">
<link rel="shortcut icon" href="imagen/angel.png" type="image/x-icon">
</head>
<body>
<div class="container">
<center>
<% 
        out.print("Su nombre es: " + request.getParameter("txtNombre"));
		String Cedula=request.getParameter("txtCedula");
        String Estado_Civil=request.getParameter("cmbECivil");
        String Lugar_residencia=request.getParameter("rdResidencia");
        String Foto=request.getParameter("fileFoto");
        String Archivo_pdf=request.getParameter("fileArchivo");
        String Ingrese_Edad=request.getParameter("edad");
        String Fecha_Nacimiento=request.getParameter("fecha");
        String Color=request.getParameter("colorFavorito");
        %>
        
        <br> Su Cedula es:
        <%=Cedula %>
        
        <br> Su estado Civil es:
        <%=Estado_Civil %>
        
        <br> Su Lugar de Residencia es:
        <%=Lugar_residencia %>
        
        <br> Su Imagen es: <img src="C:/Users/angel/Pictures/Foto" width="20" alt="10">
        <%=Foto %>
        
        <br> Su Documento en pdf es:
        <%=Archivo_pdf %>
        <br>
        <%
int adivinar=0;
if (request.getParameter("edad") != null) {
adivinar = Integer.parseInt(request.getParameter("edad")); HttpSession sesion=request.getSession();
sesion.setAttribute("edad",adivinar);
int edad=(int)sesion.getAttribute("edad");
      out.print(edad);
if (edad >=15 && edad <=25 )
{ sesion.setAttribute("etapa","Juventud"); }
else
	sesion.setAttribute("etapa","aún no existe la categoría");
}
%>

<%
HttpSession sesion=request.getSession();
out.println("Tu edad es "+sesion.getAttribute("edad"));
out.println(" estás en la etapa de "+ sesion.getAttribute("etapa"));
%>
        
        
         <br> Su Fecha de Nacimineto es:
        <%=Fecha_Nacimiento %>
        
        </br>
            <font color=<%=Color%>> Este es tu color favorito</font><br>
          </center>  
          
          </div>
          
          
          
</body>
</html>
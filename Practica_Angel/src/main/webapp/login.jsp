<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> LOGIN </title>
<link rel="stylesheet" href="sty_login.css">
<link rel="shortcut icon" href="imagen/angel.png" type="image/x-icon">
</head>
<body>
 <header>
    <nav class="navdar">
 <ul>
 		<li><a href="index.html">Inicio  </a></li>
   		<li><a href="productos.jsp">Ver los Productos </a></li>
    	<li><a href="https://www.google.com/maps/d/edit?mid=12S18O4OPHWzk_oDoNQdvj0aTiV_GjLA&usp=sharing">Como Llegar </a></li>
 </ul>
 </nav>
      
        
        <div class="container">
      <div class="info">
        
      </div>

      <forms class="form"> 
        <h2>Login</h2>
        <p>
          INICIEA SESION
        </p>
        <div class="inputs">
        
        <form action="verificarLogin.jsp" method="POST"> 
        <label for="username">Usuario:   </label>
		<input type="text" id="username" name="username" required><br><br>
		
		<label for="password">Contraseña:</label>
		<input type="password" id="password" name="password" required><br><br>

          <input type="submit" value="login" class="submit" justify-content: center;>
         </form>
        </div>
        
        
        <div class="inputs">
          <span> No tiene Cuenta <a href="registros.jsp" >Registrate</a></span><br>
          <span><a href="#" >Recuperar Password</a></span>
        </div>
       
      </forms>
    </div>
    
      </header>
</body>
</html>
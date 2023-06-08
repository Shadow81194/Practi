package com.productos.seguridad;

import java.sql.ResultSet;
import com.producto.datos.*;
public class usuario {
	
	private String nombre;
	private int perfil;
	private String login;
	private String clave;
	
	public boolean verificarUsuario(String nlogin, String nclave)
	{
	boolean respuesta=false;
	String sentencia= "Select * from tb_usuario where login_us='"+nlogin+
	"' and clave_us='"+nclave+"';";
	System.out.print(sentencia);
	try
	{
	ResultSet rs;
	Conexion clsCon=new Conexion();
	rs=clsCon.Consulta(sentencia);
	if(rs.next())
	{
	respuesta=true;
	this.setLogin(nlogin);
	this.setClave(nclave);
	this.setPerfil(rs.getInt(2));
	this.setNombre(rs.getString(3));
	}
	else
	{
	respuesta=false;
	rs.close();
	}
	}
	catch(Exception ex)
	{
	System.out.println( ex.getMessage());
	}
	return respuesta;
	}

	public int getPerfil() {
		return perfil;
	}

	public void setPerfil(int perfil) {
		this.perfil = perfil;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}


}

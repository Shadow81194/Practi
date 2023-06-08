package com.productos.negocio;

import com.producto.datos.*;
import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class productos {

	private int id;
	private int idcat;
	private String nombre;
	private int cantidad;
	private double precio;
	public productos() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdcat() {
		return idcat;
	}
	public void setIdcat(int idcat) {
		this.idcat = idcat;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	public String buscarProductoCategoria(int cat)
	{
		String sentencia="SELECT descripcion_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=15>";
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
						+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	
	public String ingresarProducto(int id, int cat,String nombre, int cantidad, double precio, 
			String directorio)
			{
			String result="";
			Conexion con=new Conexion();
			PreparedStatement pr=null;
					String sql="INSERT INTO tb_producto (id_pr,id_cat,"
							+ "nombre_pr,cantidad_pr,precio_pr,foto_pr) "
							+ "VALUES(?,?,?,?,?,?)";
							try{
							pr=con.getConexion().prepareStatement(sql);
							pr.setInt(1,id);
							pr.setInt(2,cat);
							pr.setString(3, nombre);
							pr.setInt(4, cantidad);
							pr.setDouble(5, precio);
							
							if(pr.executeUpdate()==1)
							{
							result="Inserción correcta";
							}
							else
							{
							result="Error en inserción";
							}
							}
							catch(Exception ex)
							{
							result=ex.getMessage();
							}
							finally
							{
							try
							{
							pr.close();
							con.getConexion().close();
							}
							catch(Exception ex)
							{
							System.out.print(ex.getMessage());
							}
							}
							return result;
			}

	
	public void Con_Edi_Productos(int cod) {
		Conexion con=new Conexion();
		ResultSet rs = null;
		
		String sql1 ="select id_pr, descripcion_pr, precio_pr, cantidad_pr from public.tbproducto where id_cat ="+cod+"";
		
		try {
			rs = con.Consulta(sql1);
			while(rs.next()) {
				setId_pr(rs.getInt(1));
				setId_pr(rs.getInt(2));
				setDescripcion_pr(rs.getString(3));
				setPrecio_pr(rs.getFloat(4));
				setCantidad_pr(rs.getInt(5));
			}
		}catch (Exception e) {
			
		}
	}
	private void setId_pr(int int1) {
		// TODO Auto-generated method stub
		
	}
	private void setPrecio_pr(float float1) {
		// TODO Auto-generated method stub
		
	}
	private void setCantidad_pr(int int1) {
		// TODO Auto-generated method stub
		
	}
	private void setDescripcion_pr(String string) {
		// TODO Auto-generated method stub
		
	}
			

	public String consultarProducto(int cod) {
		String tabla = "<table border=1>";
		String sql = "SELECT id_pr, nombre_pr, cantidad_pr, precio_pr"
				+ "	FROM public.tb_producto where id_cat = "+cod+";";
		ResultSet rs = null;
		tabla += "<tr>"
				+ "<th>Codigo</th>"
				+ "<th>Descripcion</th>"
				+ "<th>Precio</th>"
				+ "<th>Cantidad</th>"
				+ "</tr>";
		Conexion con=new Conexion();
		
			rs=con.Consulta(sql);
		try {
			while(rs.next()) {
				tabla += "<tr>"
						+ "<td><pre style=\"text-align: center\">"+rs.getInt(1)+"</pre></td>"
						+ "<td><pre style=\"text-align: center\">"+rs.getString(2)+"</pre></td>"
						+ "<td><pre style=\"text-align: center\">"+rs.getFloat(4)+"</pre></td>"
						+ "<td><pre style=\"text-align: center\">"+rs.getInt(3)+"</pre></td>"
						+ "<td><a href= busPro.jsp?cod="+rs.getInt(1)+"><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td><a href= elimPro.jsp?cod="+rs.getInt(1)+"><pre style=\"text-align: center\">Eliminar</pre></a></td>"
						
						+ "</tr>";
			}
			tabla += "</table>";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print(e.getMessage());
		}
		return tabla;
	}
	public void ConsulEditarproductos(int cod) {
		Conexion con=new Conexion();
		ResultSet rs = null;
		String sql = "SELECT id_pr, id_cat, nombre_pr, cantidad_pr, precio_pr"
				+ "	FROM public.tb_producto where id_pr ="+cod+";";
		
			rs=con.Consulta(sql);
			try {
			while(rs.next()) {
				setId(rs.getInt(1));
				setIdcat(rs.getInt(2));
				setNombre(rs.getString(3));
				setPrecio(rs.getFloat(5));
				setCantidad(rs.getInt(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean ModificarProducto(productos mp) {
		boolean agregado = false;
		Conexion con=new Conexion();
		String sql = "UPDATE tb_producto SET nombre_pr='" + mp.getNombre() + "', precio_pr=" + mp.getPrecio()+","
				+ " cantidad_pr=" + mp.getCantidad() + " WHERE id_pr=" + mp.getId() + ";";

		try {
			con.Ejecutar(sql);
			agregado = true;
		}catch (Exception e) {
			// TODO: handle exception
			agregado = false;
		}
		return agregado;
	}
	public boolean EliminarProducto(int cod) {
		boolean f = false;
		Conexion con=new Conexion();
		String sql = "delete from tb_producto where id_pr=" + cod + ";";
		try {
			con.Ejecutar(sql);
			f = true;
		}catch (Exception e) {
			// TODO: handle exception
			f = false;
		}
		return f;
	}
}
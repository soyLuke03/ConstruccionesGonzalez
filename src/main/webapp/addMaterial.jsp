<%@page import="com.jacaranda.Model.Categoria"%>
<%@page import="com.jacaranda.Dao.DaoCategoria"%>
<%@page import="com.jacaranda.Model.Material"%>
<%@page import="com.jacaranda.Dao.DaoMaterial"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
	try{
		DaoMaterial daoMaterial = new DaoMaterial();
	
		Integer codigo = Integer.valueOf(request.getParameter("codigo"));
		String nombre = String.valueOf(request.getParameter("name"));
		String descripcion = String.valueOf(request.getParameter("description"));
		Double precio = Double.valueOf(request.getParameter("price"));
		
		String name_categoria = String.valueOf(request.getParameter("category"));
		Integer categoriaId = DaoCategoria.getCodigoCategoria(name_categoria);
		Categoria categoria = DaoCategoria.getCategoria(categoriaId);
		
		
		Material newMaterial = new Material(codigo,nombre,descripcion,precio,categoria);
		daoMaterial.addMaterial(newMaterial);
			
		
		response.sendRedirect("listaMateriales");
	} catch (Exception e) {
		response.sendRedirect("Error.jsp");
	}


%>
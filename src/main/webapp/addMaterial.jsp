<%@page import="com.jacaranda.Exceptions.DaoMaterialException"%>
<%@page import="com.jacaranda.Model.Categoria"%>
<%@page import="com.jacaranda.Dao.DaoCategoria"%>
<%@page import="com.jacaranda.Model.Material"%>
<%@page import="com.jacaranda.Dao.DaoMaterial"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
	try{
		DaoMaterial daoMaterial = new DaoMaterial();
		DaoCategoria daoCategoria = new DaoCategoria();
		
		Integer codigo = Integer.valueOf(request.getParameter("codigo"));
		
		
		daoMaterial.materialExists(codigo);
		
		
		String nombre = String.valueOf(request.getParameter("name"));
		String descripcion = String.valueOf(request.getParameter("description"));
		Double precio = Double.valueOf(request.getParameter("price"));
		
		String name_categoria = String.valueOf(request.getParameter("category"));
		Integer categoriaId = daoCategoria.getCodigoCategoria(name_categoria);
		Categoria categoria = daoCategoria.getCategoria(categoriaId);
		
		
		Material newMaterial = new Material(codigo,nombre,descripcion,precio,categoria);
		daoMaterial.addMaterial(newMaterial);
			
		
		response.sendRedirect("listaMateriales");
		
	}catch(DaoMaterialException d){
		response.sendRedirect("RegisterMaterial.jsp?id=false");
	}
	catch (Exception e) {
		response.sendRedirect("./errorPages/Error.jsp");
	}


%>
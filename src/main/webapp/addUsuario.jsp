<%@page import="com.jacaranda.Dao.DaoUser"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="com.jacaranda.Model.Usuario"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
	try{
		DaoUser daoUser = new DaoUser(); //
	
		String user = request.getParameter("usuario");
		String password = request.getParameter("password");
		String passEncrypt = DigestUtils.md5Hex(password);
		
		String nombre = request.getParameter("nombre");
		LocalDate fechaNacimiento = LocalDate.parse(String.valueOf((request.getParameter("fecha"))));
		String genero = request.getParameter("genero");
	
		Usuario usuario = new Usuario(user,passEncrypt,0,nombre,fechaNacimiento,genero); // 
		
		daoUser.addUsuario(usuario);
		response.sendRedirect("Index.jsp");
	} catch (Exception e) {
		response.sendRedirect("Error.jsp");
	}


%>
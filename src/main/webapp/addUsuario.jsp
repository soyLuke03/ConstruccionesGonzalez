<%@page import="com.jacaranda.Exceptions.DaoUserException"%>
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
		daoUser.usuarioExists(user);
		
		String password = request.getParameter("password");
		String passEncrypt = DigestUtils.md5Hex(password);
		
		String nombre = request.getParameter("nombre");
		LocalDate fechaNacimiento = LocalDate.parse(String.valueOf((request.getParameter("fecha"))));
		String genero = request.getParameter("genero");
	
		
		if(user != null && passEncrypt != null && nombre != null && fechaNacimiento != null && genero != null){
			Usuario usuario = new Usuario(user,passEncrypt,0,nombre,fechaNacimiento,genero); //
			daoUser.addUsuario(usuario);
			response.sendRedirect("Index.jsp");
		}else{
			response.sendRedirect("./errorPages/ErrorUsuario.jsp");
		}
		
	}
	catch (DaoUserException e) {
		response.sendRedirect("Register.jsp?id=false");
	} 
	catch (Exception e) {
		response.sendRedirect("./errorPages/Error.jsp");
	}


%>
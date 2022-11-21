<%@page import="com.jacaranda.Model.Material"%>
<%@page import="com.jacaranda.Dao.DaoMaterial"%>
<%@page import="com.jacaranda.Model.ItemCarrito"%>
<%@page import="com.jacaranda.Model.CarritoDeLaCompra"%>
<%@page import="com.jacaranda.Model.Usuario"%>
<%@page import="com.jacaranda.Dao.DaoUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	try{
		DaoUser daoUser = new DaoUser();
		DaoMaterial daoMaterial = new DaoMaterial();
		
		session = request.getSession();
		String userName = (String) session.getAttribute("usuario");
		String login = (String) session.getAttribute("login");
		CarritoDeLaCompra carrito = (CarritoDeLaCompra) session.getAttribute("carrito");
			
		Usuario user = daoUser.getUsuario(userName);
		/*----------------------------------------------------------*/
		
		if(carrito!=null){
			
			
		}
		//Si carrito == null -> Creamos carrito
		else{
			CarritoDeLaCompra newCarrito = new CarritoDeLaCompra();
			
			Integer idMaterial = Integer.valueOf(request.getParameter("id"));
			Material material = daoMaterial.getMaterial(idMaterial);
			
			
			ItemCarrito itemCarrito = new ItemCarrito();
			
		}
		
		
		
		
		/*----------------------------------------------------------*/
		response.sendRedirect("listaMateriales");
	}catch(Exception e){
		response.sendRedirect("./errorPages/Error.jsp");
	}
%>
</body>
</html>
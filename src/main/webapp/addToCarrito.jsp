<%@page import="com.jacaranda.Model.UsuarioMaterial"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.jacaranda.Model.Material"%>
<%@page import="com.jacaranda.Dao.DaoMaterial"%>
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
			// Creamos el material a partir del id de la URL
			Integer idMaterial = Integer.valueOf(request.getParameter("id"));
			Material material = daoMaterial.getMaterial(idMaterial);
			
			if(idMaterial!=null && material.getStock()>0){
					UsuarioMaterial itemCarrito = new UsuarioMaterial(user, material, LocalDateTime.now(),material.getPrecio(),material.getStock());
					carrito.addListaDeItemDelCarrito(itemCarrito);
					
					response.sendRedirect("listaMateriales");
			}
			else{
				response.sendRedirect("./errorPages/ErrorStock.jsp");
			}
		}
		//Si carrito == null -> Creamos carrito
		else{
			// Creamos el carrito
			CarritoDeLaCompra newCarrito = new CarritoDeLaCompra();
			
			// Creamos el material a partir del id de la URL
			Integer idMaterial = Integer.valueOf(request.getParameter("id"));
			Material material = daoMaterial.getMaterial(idMaterial);
			
			if(idMaterial!=null && material.getStock()>0){
				session.setAttribute("carrito", newCarrito);
				UsuarioMaterial itemCarrito = new UsuarioMaterial(user, material, LocalDateTime.now(),material.getPrecio(),material.getStock());
				carrito.addListaDeItemDelCarrito(itemCarrito);
				
				
				response.sendRedirect("listaMateriales");
			}
			else{
				response.sendRedirect("./errorPages/ErrorStock.jsp");
			}
		}
		
		/*----------------------------------------------------------*/
		
	}catch(Exception e){
		response.sendRedirect("./errorPages/Error.jsp");
	}
%>
</body>
</html>
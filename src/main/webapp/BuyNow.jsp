<%@page import="com.jacaranda.Dao.DaoMaterial"%>
<%@page import="com.jacaranda.Model.Material"%>
<%@page import="com.jacaranda.Dao.DaoCarrito"%>
<%@page import="com.jacaranda.Model.CarritoDeLaCompra"%>
<%@page import="com.jacaranda.Model.UsuarioMaterial"%>
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
	DaoCarrito daoCarrito = new DaoCarrito();
	DaoMaterial daoMaterial = new DaoMaterial();

	//De aqui sacamos los item para base de datos
	CarritoDeLaCompra carrito = (CarritoDeLaCompra) session.getAttribute("carrito");

	if (carrito.getListaDeItemDelCarrito().size()!=0){
		for(UsuarioMaterial itemCarrito : carrito.getListaDeItemDelCarrito()){
			daoCarrito.addItem(itemCarrito);
			
			
			Material material = itemCarrito.getMaterial();
			material.setStock(material.getStock()-itemCarrito.getCantidad());
			daoMaterial.updateMaterial(material);
		}
		carrito.vaciarListaDeItemDelCarrito();
	}
	response.sendRedirect("listaMateriales");
}catch(Exception e){
	response.sendRedirect("./errorPages/Error.jsp");
}
%>

</body>
</html>
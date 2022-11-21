<%@page import="com.jacaranda.Model.Usuario"%>
<%@page import="com.jacaranda.Dao.DaoUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/style.css">
</head>
<body>
<%
try{
	
	DaoUser daoUser = new DaoUser();
	
	session = request.getSession();
	String userName = (String) session.getAttribute("usuario");
	String login = (String) session.getAttribute("login");
		
	Usuario user = daoUser.getUsuario(userName);
	if(userName != null && login !=null) {
%>				
					<div class="header-container">
						<div class='foto'>
							<img src='assets/fotoPrincipal.png'></img>
							<button>BUY NOW!!</button>
							<button>Empty shopping cart</button>
						</div>
						<div class='titulo'>
							<img src='assets/fotoMedio.png' class='titulo'></img>
						</div>
						
						<div class='login'>
							<button> <img src='assets/fotoPerfil.png'></img>User: <%=user.getNombre() %></button>
							<button onclick="location.href='Index.jsp'">Log out</button>
							<button onclick="location.href='listaMateriales'">Return to shop</button>
						</div>
					</div>
					<hr>
					
	
	
	
<%	
	}
}
catch(Exception e){
	response.sendRedirect("./errorPages/Error.jsp");
}
%>



</body>
</html>
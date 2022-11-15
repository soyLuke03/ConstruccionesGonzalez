package com.jacaranda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jacaranda.Dao.DaoCategoria;
import com.jacaranda.Dao.DaoMaterial;
import com.jacaranda.Model.Categoria;
import com.jacaranda.Model.Material;

/**
 * Servlet implementation class listaMateriales
 */
@WebServlet("/listaMateriales")
public class listaMateriales extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listaMateriales() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session = request.getSession();
			String userName = (String) session.getAttribute("usuario");
			String login = (String) session.getAttribute("login");
				
			
			if(userName != null && login !=null) {
				
				DaoCategoria daoCategoria = new DaoCategoria();
				List<Categoria> categorias = daoCategoria.getCategorias();
				
				try(PrintWriter out = response.getWriter()) {
					out.println("<!DOCTYPE html>");
					out.println("<html>");
					out.println("<head>");
					
					out.println("<link rel=\"stylesheet\" href=\"./css/style.css\">\r\n");
					
					out.println("</head>");
					out.println("<body>");
					
					out.println("<div class'header-container'>");
					out.println("<img src=''></img>");
					out.println("<h1 class='titulo'>Welcome to our shop</h1>");
					out.println("<button>User"+ userName +"</button>");
					out.println("</>");
					
					out.println("</div>");
					
					
					out.println("<div class'container-wrap'>");
					out.println("<h1>Lista de Materiales</h1>");
					out.println("<table align='center'>");
					
					
					out.println("<th>codigo</th>");
					out.println("<th>nombre</th>");
					out.println("<th>descripcion</th>");
					out.println("<th>precio</th>");
					out.println("<th>cod_categoria</th>");
					//Listado de materiales con su codigo de categoria
					for(Categoria categoria: categorias) {
						for(Material material: categoria.getMateriales()) {
							out.println("<tr><td>"+ material.getCodigo() +"</td>");
							out.println("<td>"+ material.getNombre() +"</td>");
							out.println("<td>"+ material.getDescripcion() +"</td>");
							out.println("<td>"+ material.getPrecio() +"</td>");
							out.println("<td>"+ material.getCategoria().getCodigo() +"</td></tr>");						
						}
					}
					
					
					
					out.println("</table>");
					out.println("</div>");
					
					out.println("</body>");
					out.println("</html>");
				} 
				catch (Exception e) {
					e.printStackTrace();
					response.sendRedirect("Error.jsp");
				}
				}
				
			}
		catch (Exception e) {
			response.sendRedirect("Error.jsp");
		}
		
		//Final del codigo
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}

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
import com.jacaranda.Dao.DaoMaterial;
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
			HttpSession sesion = request.getSession();
			sesion.getAttribute("usuario");
				
			DaoMaterial daoMaterial = new DaoMaterial();
			List<Material> materiales = null;
			try {
				materiales = daoMaterial.getMateriales();
			} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			}
			
			try(PrintWriter out = response.getWriter()) {
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head>");
				out.println("</head>");
				out.println("<body>");
				
				out.println("<h1>Lista de Materiales</h1>");
				out.println("<table border='1'>");
				
				
				out.println("<th>codigo</th>");
				out.println("<th>nombre</th>");
				out.println("<th>descripcion</th>");
				out.println("<th>precio</th>");
				out.println("<th>cod_categoria</th>");
				
				
				
					for(Material material : materiales) {
						out.println("<tr><td>"+ material.getCodigo() +"</td>");
						out.println("<td>"+ material.getNombre() +"</td>");
						out.println("<td>"+ material.getDescripcion() +"</td>");
						out.println("<td>"+ material.getPrecio() +"</td>");
						out.println("<td>"+ material.getCategoria().getCodigo() +"</td></tr>");
					}
				
				
				
				out.println("</table>");
				
				
				out.println("</body>");
				out.println("</html>");
			}
		} catch (Exception e) {
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

package com.jacaranda.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;
import com.jacaranda.Dao.DaoUser;


/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DaoUser daoUser = new DaoUser();
	
			String password = String.valueOf(request.getParameter("password"));
			String passEncrypt = DigestUtils.md5Hex(password);
	
			String usuario = String.valueOf(request.getParameter("usuario"));

			if(daoUser.userIsValid(usuario, passEncrypt)){
				HttpSession sesion = request.getSession();
				sesion.setAttribute("login","True");
				sesion.setAttribute("usuario",usuario);
				
				response.sendRedirect(request.getContextPath() + "listaMateriales");
			}
		} catch (Exception e) {
			response.sendRedirect("Error.jsp");
		}
	}

}

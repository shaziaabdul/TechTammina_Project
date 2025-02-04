package tech.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import tech.project.dao.UserDao;
import tech.project.model.User;

@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

    private UserDao userDAO = new UserDao();
	
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        User newUser = new User(0, name, email, password, role);
        try {
            userDAO.insertUser(newUser);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("listUsers");
    }
}










   

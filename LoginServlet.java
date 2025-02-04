package tech.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LoginServlet() {
        super();
     
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/Login.jsp").forward(request, response); 
    }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        
        boolean isAuthenticated = authenticateUser(email, password);
        
        if (isAuthenticated) {
            
        	response.sendRedirect(request.getContextPath() + "/views/admin.jsp"); 
        } else {
            
            request.setAttribute("errorMessage", "Invalid email or password.");
            request.getRequestDispatcher("/views/Login.jsp").forward(request, response);
        }
    }

   
    private boolean authenticateUser(String email, String password) {
       
        return "admin@gmail.com".equals(email) && "password123".equals(password);
    }
}








 
   


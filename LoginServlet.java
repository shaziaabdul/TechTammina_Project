package tech.project.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

//import tech.project.Dao.UserDao;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/Login.jsp").forward(request, response); 
    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//
//        // Assuming you have a UserDao class for authentication
//        UserDao userDao = new UserDao();
//        boolean isValidUser = userDao.authenticateUser(email, password);
//
//        if (isValidUser) {
//            response.sendRedirect(request.getContextPath() + "/views/dashboard.jsp"); 
//        } else {
//            request.setAttribute("errorMessage", "Invalid email or password");
//            request.getRequestDispatcher("/views/Login.jsp").forward(request, response);
//        }
//
//
//
//
//        }
//    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve email and password from the form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Authenticate the user (this is just an example, typically you'd query the database)
        boolean isAuthenticated = authenticateUser(email, password);
        
        if (isAuthenticated) {
            // Redirect to dashboard.jsp if authentication is successful
        	response.sendRedirect(request.getContextPath() + "/views/dashboard.jsp"); 
        } else {
            // Forward back to login page with an error message if authentication fails
            request.setAttribute("errorMessage", "Invalid email or password.");
            request.getRequestDispatcher("/views/Login.jsp").forward(request, response);
        }
    }

    // Example authentication method (use real logic in a production environment)
    private boolean authenticateUser(String email, String password) {
        // Replace with actual authentication logic, such as a database query
        return "admin@gmail.com".equals(email) && "password123".equals(password);
    }
}










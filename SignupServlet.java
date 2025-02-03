package tech.project.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        // Print received values for debugging
        System.out.println("Received Data: ");
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Password: " + password);
        System.out.println("Role: " + role);

        String dbUrl = "jdbc:mysql://localhost:3306/timesheet_db";
        String dbUsername = "root";
        String dbPassword = "Shazia";

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

            // Insert Query
            String sql = "INSERT INTO users (name, email, password, role) VALUES (?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password); // Hash password in real apps
            ps.setString(4, role);

            // Execute Update
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                System.out.println("Signup Successful! User added to DB.");
                request.setAttribute("successMessage", "Signup successful! Please login.");
            } else {
                System.out.println("Signup Failed! No rows inserted.");
                request.setAttribute("errorMessage", "Signup failed. Please try again.");
            }
            request.getRequestDispatcher("/views/SignUp.jsp").forward(request, response);

        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver Not Found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Database Error: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

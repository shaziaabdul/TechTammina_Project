package tech.project.controller;
import java.sql.*;

public class TestProgram{
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/timesheet_db";
        String user = "root";
        String password = "Shazia";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Database Connection Successful!");

            // Test inserting a record
            String sql = "INSERT INTO users (name, email, password, role) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "Test User");
            ps.setString(2, "test@example.com");
            ps.setString(3, "password123");
            ps.setString(4, "Admin");
            int rowsInserted = ps.executeUpdate();
            System.out.println("Rows Inserted: " + rowsInserted);

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

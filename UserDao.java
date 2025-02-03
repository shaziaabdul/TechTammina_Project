package tech.project.Dao;

import tech.util.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {

    public boolean authenticateUser(String email, String password) {
        if ("admin@gmail.com".equals(email) && "password123".equals(password)) {
            return true;
        }
        return false;
    }

    public boolean isEmailExist(String email) {
        try (Connection conn = DatabaseConnection.getConnection()) {
            String sql = "SELECT email FROM users WHERE email=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean registerUser(String name, String email, String password, String role) {
        try (Connection conn = DatabaseConnection.getConnection()) {
            String sql = "INSERT INTO users (name, email, password, role) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, role);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

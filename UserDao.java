package tech.project.dao;
import tech.project.model.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
	
	public void insertUser(User user) throws SQLException {
	        try (Connection con = DBConnection.getConnection();
	            PreparedStatement ps = con.prepareStatement("INSERT INTO users (name, email, password, role) VALUES (?, ?, ?, ?)")) {
	            ps.setString(1, user.getName());
	            ps.setString(2, user.getEmail());
	            ps.setString(3, user.getPassword());
	            ps.setString(4, user.getRole());
	            ps.executeUpdate();
	        }
	    }

	    public List<User> listUsers() throws SQLException {
	        List<User> users = new ArrayList<>();
	        try (Connection con = DBConnection.getConnection();
	             Statement stmt = con.createStatement();
	             ResultSet rs = stmt.executeQuery("SELECT * FROM users")) {
	            while (rs.next()) {
	                users.add(new User(rs.getInt("id"), rs.getString("name"),
	                        rs.getString("email"), rs.getString("password"), rs.getString("role")));
	            }
	        }
	        return users;
	    }

	    public User getUserById(int id) throws SQLException {
	        try (Connection con = DBConnection.getConnection();
	             PreparedStatement ps = con.prepareStatement( "SELECT * FROM users WHERE id=?")) {
	            ps.setInt(1, id);
	            try (ResultSet rs = ps.executeQuery()) {
	                if (rs.next()) {
	                    return new User(rs.getInt("id"), rs.getString("name"),
	                            rs.getString("email"), rs.getString("password"), rs.getString("role"));
	                }
	            }
	        }
	        return null;
	    }

	    public void updateUser(User user) throws SQLException {
	        try (Connection con = DBConnection.getConnection();
	             PreparedStatement ps = con.prepareStatement("UPDATE users SET name=?, email=?, password=?, role=? WHERE id=?")) {
	            ps.setString(1, user.getName());
	            ps.setString(2, user.getEmail());
	            ps.setString(3, user.getPassword());
	            ps.setString(4, user.getRole());
	            ps.setInt(5, user.getId());
	            ps.executeUpdate();
	        }
	    }

	    public void deleteUser(int id) throws SQLException {
	        try (Connection con = DBConnection.getConnection();
	             PreparedStatement ps = con.prepareStatement("DELETE FROM users WHERE id=?")) {
	            ps.setInt(1, id);
	            ps.executeUpdate();
	        }
	    }
	}



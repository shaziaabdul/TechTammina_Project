<%@ page import="java.util.*, tech.project.model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
</head>
<body>
    <h2>User List</h2>
    <table border="1">
        <tr><th>ID</th><th>Name</th><th>Email</th><th>Role</th><th>Actions</th></tr>
        <%
            List<User> userList = (List<User>) request.getAttribute("userList");
            if (userList != null && !userList.isEmpty()) {
                for (User u : userList) {
        %>
        <tr>
            <td><%= u.getId() %></td>
            <td><%= u.getName() %></td>
            <td><%= u.getEmail() %></td>
            <td><%= u.getRole() %></td>
            <td>
                <a href="editUser.jsp?id=<%= u.getId() %>">Edit</a>
                <a href="UserServlet?action=delete&id=<%= u.getId() %>">Delete</a>
            </td>
        </tr>
        <% 
                }
            } else { 
        %>
        <tr><td colspan="5">No users found.</td></tr>
        <% } %>
    </table>
</body>
</html>

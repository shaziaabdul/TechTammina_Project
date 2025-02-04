<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
</head>
<body>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Role</th>
        <th>Actions</th>
    </tr>
    <%
        tech.project.dao.UserDao userDAO = new tech.project.dao.UserDao();
        for (tech.project.model.User user :userDAO.listUsers()) {
    %>
    <tr>
        <td><%= user.getId() %></td>
        <td><%= user.getName() %></td>
        <td><%= user.getEmail() %></td>
        <td><%= user.getRole() %></td>
        <td>
            <a href="editUser?id=<%= user.getId() %>">Edit</a> 
            <a href="deleteUser?id=<%= user.getId() %>">Delete</a>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
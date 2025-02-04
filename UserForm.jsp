<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Form</title>
</head>
<body>
<form action="addUser" method="post">
    Name: <input type="text" name="name" required><br>
    Email: <input type="email" name="email" required><br>
    Password: <input type="password" name="password" required><br>
    Role:
    <select name="role">
        <option value="HR">HR</option>
        <option value="Team Manager">Team Manager</option>
    </select><br>
    <input type="submit" value="Add User">
</form>
</body>
</html>

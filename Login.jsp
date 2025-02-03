<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Employee Timesheet</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .form-control {
            border-radius: 20px;
        }
        .btn-login {
            background: #764ba2;
            color: white;
            border-radius: 20px;
            padding: 10px;
            font-size: 16px;
            width: 100%;
            transition: 0.3s ease;
        }
        .btn-login:hover {
            background: #5a3e86;
        }
        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 10px;
            font-size: 14px;
        }
        .footer-text {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }
        .footer-text a {
            color: #764ba2;
            text-decoration: none;
        }
        .footer-text a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>

<form action="/Emp_Timesheet_Project/LoginServlet" method="post">

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn btn-login">Login</button>
        </form>
        <p class="footer-text">Don't have an account? <a href="<%= request.getContextPath() %>/views/SignUp.jsp">Sign up</a></p>
    </div>
</body>
</html>

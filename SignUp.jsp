<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Employee Timesheet</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }
        .signup-container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
        }
        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .form-label {
            font-size: 16px;
            font-weight: 500;
            color: #444;
        }
        .form-control {
            border-radius: 20px;
            padding: 12px;
            font-size: 14px;
            border: 1px solid #ccc;
            transition: border 0.3s ease;
        }
        .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 10px rgba(102, 126, 234, 0.5);
        }
        .btn-primary {
            background-color: #764ba2;
            border-color: #764ba2;
            border-radius: 20px;
            padding: 12px;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #5a3e86;
            border-color: #5a3e86;
        }
        .footer-text {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
            color: #333;
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

    <div class="signup-container">
        <h2>Signup</h2>
        
        <!-- Display Success or Error Message -->
        <div>
            <c:if test="${not empty successMessage}">
                <div class="alert alert-success">${successMessage}</div>
            </c:if>
            <c:if test="${not empty errorMessage}">
                <div class="alert alert-danger">${errorMessage}</div>
            </c:if>
        </div>

        <form action="/Emp_Timesheet_Project/SignupServlet" method="post">
            <div class="mb-3">
                <label class="form-label">Full Name</label>
                <input type="text" name="name"  required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Role</label>
                <select name="role" class="form-control">
                    <option value="Admin">Admin</option>
                    <option value="HR Manager">HR Manager</option>
                    <option value="Team Manager">Team Manager</option>
                    <option value="Employee">Employee</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Signup</button>
        </form>
        <p class="footer-text">Already have an account? <a href="<%= request.getContextPath() %>/views/Login.jsp">Login here</a></p>
    </div>

</body>
</html>

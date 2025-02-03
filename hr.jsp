<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>HR Manager Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        
    <style>
        body {
            display: flex;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background: #343a40;
            color: white;
            padding-top: 20px;
            position: fixed;
        }
        .sidebar a {
            color: white;
            padding: 10px 20px;
            display: block;
            text-decoration: none;
        }
        .sidebar a:hover {
            background: #495057;
        }
        .content {
            margin-left: 260px;
            padding: 20px;
            width: 100%;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<body>
    <div class="sidebar">
        <h4 class="text-center">HR Manager Panel</h4>
        <a href="employeeManagement">Employee Management</a>
        <a href="skillSetManagement">Skill Set Management</a>
        <a href="leaveManagement">Leave Management</a>
        <a href="employeeTransfer">Employee Transfer</a>
        <a href="hrReports">Reports</a>
        <a href="logout">Logout</a>
    </div>

    <div class="content">
        <h2>Welcome to HR Manager Dashboard</h2>
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card bg-primary text-white">
                    <div class="card-body">
                        <h5>Employee Management</h5>
                        <p>Manage employee records and details.</p>
                        <a href="employeeManagement" class="btn btn-light">Go to Employee Management</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-success text-white">
                    <div class="card-body">
                        <h5>Skill Set Management</h5>
                        <p>Manage employee skills and training programs.</p>
                        <a href="skillSetManagement" class="btn btn-light">Go to Skill Set Management</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-warning text-dark">
                    <div class="card-body">
                        <h5>Leave Management</h5>
                        <p>Approve and track employee leave requests.</p>
                        <a href="leaveManagement" class="btn btn-dark">Go to Leave Management</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mt-3">
                <div class="card bg-danger text-white">
                    <div class="card-body">
                        <h5>Employee Transfer</h5>
                        <p>Manage employee transfers between departments.</p>
                        <a href="employeeTransfer" class="btn btn-light">Go to Employee Transfer</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mt-3">
                <div class="card bg-info text-white">
                    <div class="card-body">
                        <h5>Reports</h5>
                        <p>Generate HR reports on employees, skills, and leaves.</p>
                        <a href="hrReports" class="btn btn-light">View Reports</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>






    
    
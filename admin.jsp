<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
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
    <div class="sidebar">
        <h4 class="text-center">Admin Panel</h4>
        <a href="userManagement">User Management</a>
        <a href="roleManagement">Role Management</a>
        <a href="practiceManagement">Practice Management</a>
        <a href="employeeTransfer">Employee Transfer</a>
        <a href="reports">Reports</a>
        <a href="logout">Logout</a>
    </div>

    <div class="content">
        <h2>Welcome to Admin Dashboard</h2>
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card bg-primary text-white">
                    <div class="card-body">
                        <h5>User Management</h5>
                        <p>Manage all users and their access.</p>
                        <a href="userManagement" class="btn btn-light">Go to User Management</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-success text-white">
                    <div class="card-body">
                        <h5>Role Management</h5>
                        <p>Define roles and permissions.</p>
                        <a href="roleManagement" class="btn btn-light">Go to Role Management</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-warning text-dark">
                    <div class="card-body">
                        <h5>Practice Management</h5>
                        <p>Manage different practices in the organization.</p>
                        <a href="practiceManagement" class="btn btn-dark">Go to Practice Management</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mt-3">
                <div class="card bg-danger text-white">
                    <div class="card-body">
                        <h5>Employee Transfer</h5>
                        <p>Manage employee transfers between teams.</p>
                        <a href="employeeTransfer" class="btn btn-light">Go to Employee Transfer</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mt-3">
                <div class="card bg-info text-white">
                    <div class="card-body">
                        <h5>Reports</h5>
                        <p>Generate reports on employees, projects, and teams.</p>
                        <a href="reports" class="btn btn-light">View Reports</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

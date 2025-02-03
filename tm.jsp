<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Team Manager Dashboard</title>
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
        <h4 class="text-center">Team Manager Panel</h4>
        <a href="assignWork">Assign Work</a>
        <a href="projectManagement">Project Management</a>
        <a href="teamReports">Reports</a>
        <a href="logout">Logout</a>
    </div>

    <div class="content">
        <h2>Welcome to Team Manager Dashboard</h2>
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card bg-primary text-white">
                    <div class="card-body">
                        <h5>Assign Work</h5>
                        <p>Assign tasks to employees and track progress.</p>
                        <a href="assignWork" class="btn btn-light">Go to Assign Work</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-success text-white">
                    <div class="card-body">
                        <h5>Project Management</h5>
                        <p>Manage projects, deadlines, and team members.</p>
                        <a href="projectManagement" class="btn btn-light">Go to Project Management</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-info text-white">
                    <div class="card-body">
                        <h5>Reports</h5>
                        <p>Generate team and project-related reports.</p>
                        <a href="teamReports" class="btn btn-light">View Reports</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

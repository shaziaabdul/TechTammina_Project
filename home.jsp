<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>Employee Timesheet - Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
    background-image: url('https://blog.kytes.com/wp-content/uploads/2024/02/timesheet-management-banners.jpg'); /* Replace with your image URL */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 100vh; /* Set height to 100% of the viewport */
    margin: 0; /* Ensure no margins */
}

        .card {
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .role-section {
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
        <img src="https://i.pinimg.com/736x/b2/a9/10/b2a91024b59778e93f6dbad728a3f532.jpg" height=70px, width=50px alt="Logo">
            <a class="navbar-brand" href="#">Timesheet System</a>


            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Logout.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <h2 class="text-center mb-4">Welcome to Employee Timesheet System</h2>
        
        <div class="row">
            <!-- Admin Section -->
            <div class="col-6 role-section">
                <div class="card bg-primary text-white">
                    <div class="card-body">
                        <h4 class="card-title">Admin Panel</h4>
                        <p>Manage users, roles, and overall system settings.</p>
                        <a href="admin.jsp" class="btn btn-light">Go to Admin Panel</a>
                    </div>
                </div>
            </div>
            
            <!-- HR Manager Section -->
            <div class="col-6 role-section">
                <div class="card bg-success text-white">
                    <div class="card-body">
                        <h4 class="card-title">HR Manager</h4>
                        <p>Handle employee transfers, roles, and records.</p>
                        <a href="hr.jsp" class="btn btn-light">Go to HR Panel</a>
                    </div>
                </div>
            </div>
            
            <!-- Team Manager Section -->
            <div class=" col-6 role-section">
                <div class="card bg-warning text-dark">
                    <div class="card-body">
                        <h4 class="card-title">Team Manager</h4>
                        <p>Manage teams, projects, and track deadlines.</p>
                        <a href="tm.jsp" class="btn btn-dark">Go to Team Manager Panel</a>
                    </div>
                </div>
            </div>
            
            <!-- Employee/Trainer Section -->
            <div class="col-6 role-section">
                <div class="card bg-danger text-white">
                    <div class="card-body">
                        <h4 class="card-title">Employee/Trainer</h4>
                        <p>Submit timesheets, track work hours, and progress.</p>
                        <a href="emp.jsp" class="btn btn-light">Go to Employee Portal</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

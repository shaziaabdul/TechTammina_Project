<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            display: flex;
            flex-direction: column;
        }
        .navbar {
            background: #007bff;
            padding: 10px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar .logo {
            font-size: 20px;
            font-weight: bold;
        }
        .navbar .icons {
            display: flex;
            align-items: center;
        }
        .navbar .icons i {
            font-size: 20px;
            margin-right: 15px;
            cursor: pointer;
        }
        .navbar .profile-pic {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: white;
        }
        .main-container {
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
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="navbar">
        <div class="logo">Employee Dashboard</div>
        <div class="icons">
            <i class="fas fa-bell"></i> <!-- Notification Icon -->
            <!-- Profile Picture from JSP dynamic context -->
            <img src="<%= session.getAttribute("profileImage") != null ? session.getAttribute("profileImage") : "default.jpg" %>" alt="Profile" class="profile-pic">
        </div>
    </div>
    
    <div class="main-container">
        <div class="sidebar">
            <h4 class="text-center">Employee Panel</h4>
            <a href="editProfile.jsp">Edit Profile</a>
            <a href="timesheet.jsp">Timesheet</a>
            <a href="changePassword.jsp">Change Password</a>
            <a href="employeeReports.jsp">Reports</a>
            <a href="views/Logout.jsp">Logout</a>
        </div>

        <div class="content">
            <h2>Welcome to Employee Dashboard</h2>
            <div class="row mt-4">
                <div class="col-md-4">
                    <div class="card bg-primary text-white">
                        <div class="card-body">
                            <h5>Edit Profile</h5>
                            <p>Update your personal details.</p>
                            <a href="editProfile.jsp" class="btn btn-light">Go to Edit Profile</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-success text-white">
                        <div class="card-body">
                            <h5>Timesheet</h5>
                            <p>Manage your work hours and activities.</p>
                            <a href="timesheet.jsp" class="btn btn-light">Go to Timesheet</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-warning text-dark">
                        <div class="card-body">
                            <h5>Change Password</h5>
                            <p>Update your account password.</p>
                            <a href="changePassword.jsp" class="btn btn-dark">Change Password</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mt-3">
                    <div class="card bg-info text-white">
                        <div class="card-body">
                            <h5>Reports</h5>
                            <p>View reports on your work and progress.</p>
                            <a href="employeeReports.jsp" class="btn btn-light">View Reports</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

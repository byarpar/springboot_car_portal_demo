<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navigation Bar</title>
  
    <!-- Add the previous styles for animation -->
    <style>
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .navbar {
            animation: fadeIn 1s ease; 
        }

        .navbar-nav li a {
            transition: transform 0.3s ease;
        }

        .navbar-nav li a:hover {
            transform: scale(1.1); 
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-primary" style="background-color: black;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">
                    <img src="/images/used-car-logo.png" width="120px" />
                </a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <sec:authorize access="!isAuthenticated()">
                        <li><a href="cus_login_page">Login</a></li>
                        <li><a href="new">Register</a></li>
                        <li><a href="about">About Us</a></li>
                        <li><a href="contact">Contact Us</a></li>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <sec:authorize access="hasRole('Users')">
                            <li><a href="cars">Used Cars</a></li>
                            <li><a href="new_car">Sell Your Car</a></li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('Administrator')">
                            <li><a href="cars">Car Management</a></li>
                            <li><a href="users">User Management</a></li>
                        </sec:authorize>
                        <li>
                            <form action="logout" method="post" style="padding: 7px;">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <input type="submit" name="Logout" value="Logout" class="btn btn-primary"></input>
                            </form>
                        </li>
                    </sec:authorize>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>

<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!-- Enable Bootstrap -->
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
    rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
    rel="stylesheet" type="text/css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>

<style>
    /* Custom CSS for the register card form */
    .register-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        margin-top: 20px;
    }

    .register-title {
        color: #000;
    }

    .register-form {
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: inset 0px 20px 20px 9px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
        text-align: left;
    }

    .success-message {
        color: #28a745;
    }

    .login-link {
        color: blue;
    }

    /* Custom styling for input fields */
    .form-control:focus {
        border-color: #007bff; /* Change the border color when focused */
        outline: 0; /* Remove the default outline */
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25); /* Add a subtle box shadow */
    }
</style>


</head>

<body>

    <%@ include file="header.jsp"%>

    <!-- Register Container -->
    <div class="container-fluid bg-1 text-center register-container">
        <h3 class="margin register-title">Register Here!</h3>

        <div class="row">

            <div class="col-md-4"></div>

            <div class="col-md-4">
                <c:if test="${register_success != null}">
                    <div class="alert alert-success success-message">
                        <p>${register_success} Click <a href="cus_login_page" class="login-link"> Sign In</a> to use our portal...</p>
                    </div>
                </c:if>

                <form:form action="save" method="post" modelAttribute="user" class="register-form">
                    <div class="form-group">
                        <label for="username">Your Full Name:</label>
                        <form:input path="name" class="form-control" required="true"/>
                    </div>

                    <div class="form-group">
                        <label for="username">Your Login User Name:</label>
                        <form:input path="userName" class="form-control" required="true"/>
                    </div>

                    <div class="form-group">
                        <label for="password">Your Password:</label>
                        <form:password path="password" class="form-control" required="true"/>
                    </div>

                    <input type="submit" value="Register" class="btn btn-primary" style="background-color: blue; color: white;"/>
                </form:form>
            </div>

            <div class="col-md-4"></div>
        </div>
    </div>

    <%@ include file="footer.jsp"%>

</body>
</html>

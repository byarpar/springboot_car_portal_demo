<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
    /* Custom styles for your contact page */
    .contactus {
        background-color: #f4f4f4;
        padding: 40px 0;
    }

    .contact-card {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-bottom: 20px;
    }

    h2.text-center {
        color: #333;
    }

    p {
        color: #555;
    }

    .glyphicon {
        margin-right: 10px;
    }

    .form-control {
        margin-bottom: 15px;
    }

    button.btn-default {
        background-color: #3498db;
        color: #fff;
    }
</style>

</head>

<body>

    <%@ include file="header.jsp"%>

    <!-- First Container -->
    <div class="container-fluid contactus">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="contact-card">
                    <h2 class="text-center">CONTACT </h2>
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p>
                        <span class="glyphicon glyphicon-map-marker"></span> MKN, Myanmar
                    </p>
                    <p>
                        <span class="glyphicon glyphicon-phone"></span> +95 7798171
                    </p>
                    <p>
                        <span class="glyphicon glyphicon-envelope"></span> kbee_20@cardeals.com
                    </p>
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                        </div>
                    </div>
                    <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
                    <br>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <button class="btn btn-default pull-right" type="submit">Send</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp"%>

</body>
</html>

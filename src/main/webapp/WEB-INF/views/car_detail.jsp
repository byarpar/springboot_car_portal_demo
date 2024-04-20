<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

    <!-- Enable Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body>
    <%@ include file="header.jsp"%>

    <div class="container">

        <div class="row">
            <h3 class="margin text-center">Detail Car Information !</h3>

            <div class="col-md-8">

                <form:form class="form-horizontal">

                    <div class="form-group">
                        <div class="col-sm-8">
                            <div class="card" style="width: 18rem;">
                                <img src="/images/${car.carphoto}" class="card-img-top" alt="Car Photo"
                                    style="max-height: 300px; object-fit: contain;">
                                <div class="card-body">
                                    <!-- Add other card content here if needed -->
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Rest of your form content -->

                    <div class="form-group">
                        <label for="price" class="control-label col-sm-4"> <img src="/images/avator.png" width="60px"
                                alt="..."></label>
                        <div class="col-sm-8" style="padding: 20px;">

                            <form action="car_detail?id=${car.id}" method="post">
                                <input type="hidden" name="id" value="${car.id}" /> <input type="hidden"
                                    name="${_csrf.parameterName}" value="${_csrf.token}" /> <input type="number"
                                    placeholder="Enter Bid Price" name="bitprice" />

                                <div class="form-group" style="padding: 20px;">
                                    <input type="submit" value="Bit Car" class="btn btn-success">
                                    <a href="cars" class="btn btn-danger">Go Back</a>
                                </div>

                            </form>
                        </div>

                    </div>

                    <script>
                        function goBack() {
                            window.history.back();
                        }
                    </script>

                </form:form>


            </div>

            <div class="col-md-3 bg-3">
                <h4> Current Bidding Price!</h4><br />
                <c:forEach var="car_bidding" items="${bidinfo}">

                    <div class="card mb-3 card bg-info" style="padding:10px;">

                        <div class="row">
                            <div class="col-md-6">
                                <img class="card-img-top" src="/images/avator.png" width="30px"
                                    class="rounded-circle" class="mr-3" alt="...">
                                <p>${car_bidding.bidderName}</p>
                            </div>
                            <div class="col-md-6">
                                <div class="card-body">
                                    <p class="card-head"><small
                                            class="text-muted">${car_bidding.bid_date_time}</small></p>
                                    <p class="card-text">Bidded Price: ${car_bidding.bidderPrice}</p>

                                </div>
                            </div>
                        </div>
                    </div>

                    <hr />
                </c:forEach>

            </div>
        </div>

    </div>

    <%@ include file="footer.jsp"%>

</body>
</html>

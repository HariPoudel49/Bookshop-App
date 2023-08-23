<%@ page contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>BookShop Register</title>
    <%@include file="all_component/allCss.jsp" %>




</head>
<body style="background-color:#f0f1f2;">
<%@include file="all_component/navbar.jsp" %>
<div class="container p-2">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center ">Registration Page</h4>

                    <c:if test="${(not empty succMsg)}">
                        <p class="text-center text-success"> ${succMsg}</p>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>
                    <c:if  test="${(not empty failedMsg)}">
                        <p class="text-center text-danger"> ${failedMsg}</p>
                        <c:remove var="failedMsg" scope="session" />

                    </c:if>


                    <form action="register" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1"><h6>Enter Full Name</h6></label>
                            <input type="text" class="form-control" id="exampleInputEmail1"
                                   aria-describedby="emailHelp" required="required" name="fname">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1"><h6>Email address</h6></label>
                            <input type="email" class="form-control" id="exampleInputEmail1"
                                   aria-describedby="emailHelp" required="required" name="email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1"><h6>Phone Number</h6></label>
                            <input type="number" class="form-control" id="exampleInputEmail1"
                                   aria-describedby="emailHelp" required="required" name="phno" id="phno"
                                   Pattern = "/^\d{10}$/"  required>
                            <h6>Your Phone number Format</h6>
                            <p>-starting with 97 or 98</p>
                            <p>-Only 10 Digit</p>

                        </div>
                        <div class="form-group">

                            <label for="exampleInputPassword1"><h6>Password</h6></label>
                            <input type="password" class="form-control" id="exampleInputPassword1"
                                   placeholder="Password" required="required" name="password" id="password" required>
                            <h6> Your password must Include</h6>
                                <p>.one uppercase letter</p>
                                <p>.one lowercase letter</p>
                                <p>.one number</p>
                                <p>.one special character.</p>
                                <p>.At least 8 characters</p>

                        </div>


                        <div class="form-group">

                            <label for="exampleInputPassword1"><h6>Confirm Password:</h6></label>
                            <input type="password" class="form-control" id="exampleInputPassword1"
                                   placeholder="Password" required="required" name="conformPassword" id="conformPassword" required>


                        </div>


                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" name="check" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1"><h6>Agree terms & condition</h6></label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>
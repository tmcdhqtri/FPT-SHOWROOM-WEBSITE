<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>   
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">
                <img src="" alt="" width="35" class="d-inline-block align-text-top">
                ADMIN PAGE
            </a>
            <div class="nav nav-tabs" id="tab-nav" roll="tablist">
               <c:if test="${sessionScope.ROLESALE==1}"> 
                <button class="nav-link" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="false">
                    Home
                </button>
                </c:if>
                <button class="nav-link active" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="true">
                    Car
                </button>
            </div>
            <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Hello ${ROLE.username}
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                            <li><a class="dropdown-item" href="UpdateAdminAccount?username=${ROLE.username}">Update Account</a></li>
                            <li><a class="dropdown-item" href="HomeServlet">Back showroom</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="LogoutServlet">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <a class="nav-link"  href="AddNewAccount.jsp">Create New Account</a>
            <a class="nav-link"  href="AddNewCar.jsp">Create New Car</a>


        </nav>

        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade p-3" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <div class="container-lg mt-5">
                    <div class="row justify-content-center">
                        <div class="col-lg">
                            <div>
                                <table class="table table-primary table-bordered border-light table-hover">
                                    <thead class="table-light">
                                        <tr class="text-center">
                                            <td>ID</td>
                                            <td>Customer ID</td>
                                            <td>Customer Name</td>
                                            <td>Phone</td>
                                            <td>Email</td>
                                            <td>Customer Address</td>
                                            <td>Date Of Birth</td>
                                            <td>Username</td>
                                            <td>Password</td>
                                            <td colspan="2">Action</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${USERLIST}" var="ul"> 
                                                <tr>
                                                    <td class="text-center">${ul.ID}</td>
                                                    <td class="text-center">${ul.customerID}</td>

                                                    <td class="text-center">${ul.customerName}</td>

                                                    <td class="text-center"> ${ul.phone}</td>
                                                    
                                                    <td class="text-center"> ${ul.email}</td>

                                                    <td class="text-center"> ${ul.address}</td>
                                                    <td class="text-center"> ${ul.dateOfBirth}</td>
                                                    <td class="text-center"> ${ul.username}</td>
                                                    <td class="text-center"> ${ul.password}</td>
                                                    <td class="text-center">
                                                        <a class="btn btn-outline-secondary" href="UpdateCustomerAccount?username=${ul.username}">Update</a>
                                                    </td>

                                                    <td class="text-center">
                                                        <a class="btn btn-outline-secondary" href="DeleteCustomerAccount?username=${ul.username}">Delete</a>
                                                    </td>
                                                </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>                
                    </div>
                </div>
            </div>
            <div class="tab-pane fade show active p-3" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

                <div class="container-lg mt-5">
                    <div class="row justify-content-center">
                        <div class="col-lg">
                            <div>
                                <table class="table table-primary table-bordered border-light table-hover">
                                    <thead class="table-light">
                                        <tr class="text-center">
                                            <td>Car ID</td>
                                            <td>Quantity</td>
                                            <td>Price</td>
                                            <td>Seat</td>
                                            <td>Doors</td>
                                            <td>Color</td>
                                            <td>Year</td>
                                            <td>Made in</td>
                                            <td>Engine Size</td>
                                            <td>Cylinders</td>
                                            <td>Image</td>
                                            <td colspan="2">Action</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${CARLIST}" var="c">
                                            <tr>
                                                <td class="text-center">${c.carID}</td>
                                                <td class="text-center">${c.quantity}</td>
                                                <td class="text-center">${c.price}</td>
                                                <td class="text-center">${c.numSeat}</td>
                                                <td class="text-center">${c.doors}</td>
                                                <td class="text-center">${c.color}</td>
                                                <td class="text-center">${c.madeIn}</td>
                                                <td class="text-center">${c.engineSize}</td>
                                                <td class="text-center">${c.cylinders}</td>
                                                
                                                <td class="text-center"><img src="${c.imageURL}" alt="" style="width: 170px"/></td>

                                                <td class="text-center">
                                                    <a class="btn btn-outline-secondary" href="UpdateCarServlet?carID=${c.carID}">Update</a>
                                                </td>

                                                <td class="text-center">
                                                    <a class="btn btn-outline-secondary" href="DeleteCarServlet?carID=${c.carID}">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>                
                    </div>
                </div>
            </div>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

    </body>
</html>

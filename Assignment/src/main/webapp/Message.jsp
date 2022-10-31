<%-- 
    Document   : Message.jsp
    Created on : Jul 16, 2022, 7:59:32 AM
    Author     : Pro
--%>
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
                <button class="nav-link active" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="true">
                    Message
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
        </nav>

            <div class="tab-pane fade show active p-3" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

                <div class="container-lg mt-5">
                    <div class="row justify-content-center">
                        <div class="col-lg">
                            <div>
                                <table class="table table-primary table-bordered border-light table-hover">
                                    <thead class="table-light">
                                        <tr class="text-center">
                                            <td>Name</td>
                                            <td>Email</td>
                                            <td>Message</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${MessageList}" var="m">
                                            <tr>
                                                <td class="text-center">${m.getName()}</td>
                                                <td class="text-center">${m.getEmail()}</td>
                                                <td class="text-center">${m.getNote()}</td>
                                               
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>                
                    </div>
                </div>
            </div>                
                            
    </body>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <title>Update Page</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-6 border border-primary border-3 rounded-3">
                    <div class="text-center mx-3">
                        <h2 class="text-primary">Update Information</h2>
                    </div>
                    <form action="UpdateAdminAccount" enctype="multipart/form-data" method="post" >
                                                
                        <div class="mt-3">
                            <label class="form-label">Admin ID</label>
                            <input type="text" class="form-control border border-2" name="ADMINID" value="${u.adminID}"readonly>                                
                        </div>
                        <div class="mt-3">
                            <label class="form-label">Username</label>
                            <input type="text" class="form-control border border-2" name="USERNAME" value="${u.username}"readonly>                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control border border-2" name="PASSWORD" value="${u.password} " required>                                                                
                        </div>
                        <div class="mt-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control border border-2" name="ADMINNAME" value="${u.adminName}" required>                                
                        </div>       
                        <div class="my-3">
                            <label class="form-label">Phone number</label>
                            <input type="text" class="form-control border border-2" name="PHONE" value="${u.phone}"required>                                                                
                        </div>

                        <div class="my-3">
                            <label class="form-label">Email</label>
                            <input type="text" class="form-control border border-2" name="EMAIL" value="${u.email}" required>                
                        </div>

                        <div class="my-3">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-control border border-2" name="ADDRESS" value="${u.address}" required>                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Birthday</label>
                            <input type="date" class="form-control border border-2" name="DATEOFBIRTH" value="${u.dateOfBirth}"required>                
                        </div>
                        <div class="my-3">
                            <label for="selectClass" class="col-form-label">Role</label>
                            <select class="form-select" aria-label="Role Select" name="ROLE">
                                <option value="admin" ${u.role == true?"selected":""}>Admin</option>
                                <option value="seller" ${u.role == false?"selected":""}>Seller</option>
                            </select>
                        </div>
                        <div class="my-3">
                            <label for="userInput" class="col-form-label">Upload Photo</label>
                            <input class="form-control" type="file" name="photo" value="${u.imageURL}">
                        </div>
                        <div class="text-center my-3">
                            <button type="submit" class="btn btn-primary" name="submit" value="">Update</button>
                               <a class="btn btn-primary" name="submit" href="AdminManageServlet">Cancel Update</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>


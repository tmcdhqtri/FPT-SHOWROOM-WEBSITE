<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <title>Add Page</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-6 border border-primary border-3 rounded-3">
                    <div class="text-center mx-3">
                        <h2 class="text-primary">Add New Car</h2>
                    </div>
                    <form action="AddNewCar" enctype="multipart/form-data" method="post" >
                        <p class="text-danger">${MESSAGE}</p>
                        <div class="mt-3">
                            <label class="form-label">Car ID</label>
                            <input type="text" class="form-control border border-2" name="CARID" value="" required>                                
                        </div>

                        <div class="my-3">
                            <label class="form-label">Car Name</label>
                            <input type="text" class="form-control border border-2" name="CARNAME" value="" required>                                                                
                        </div>

                        <div class="my-3">
                            <label class="form-label">Model</label>
                            <input type="text" class="form-control border border-2" name="MODEL" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Quantity</label>
                            <input type="text" class="form-control border border-2" name="QUANTITY" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Price</label>
                            <input type="text" class="form-control border border-2" name="PRICE" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Number of seat</label>
                            <input type="text" class="form-control border border-2" name="NUMSEAT" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Doors</label>
                            <input type="text" class="form-control border border-2" name="DOORS" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Color</label>
                            <input type="text" class="form-control border border-2" name="COLOR" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Year</label>
                            <input type="date" class="form-control border border-2" name="YEAR" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Made in</label>
                            <input type="text" class="form-control border border-2" name="MADEIN" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Engine Size</label>
                            <input type="text" class="form-control border border-2" name="ENGINESIZE" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Power</label>
                            <input type="text" class="form-control border border-2" name="POWER" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Cylinders</label>
                            <input type="text" class="form-control border border-2" name="CYLINDERS" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label class="form-label">Description</label>
                            <input type="text" class="form-control border border-2" name="DESCRIPTION" value="" required>                                                                
                        </div>
                        <div class="my-3">
                            <label for="userInput" class="col-form-label">Upload Photo</label>
                            <input class="form-control" type="file" name="photo" value="">
                        </div>
                        <div class="text-center my-3">
                            <button type="submit" class="btn btn-outline-primary" name="submit">Add</button>
                            <a class="btn btn-outline-secondary" name="submit" href="AdminHomePage">Cancel Add New</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
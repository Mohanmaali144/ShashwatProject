<%-- 
    Document   : subscription
    Created on : 28-Nov-2023, 12:34:56 pm
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="../css/subscription2.css">
</head>

<body>
    <%@include file="profilenavbar.jsp" %>
    <div class="container bg-light d-md-flex align-items-center">
        <div class="card box1 shadow-sm p-md-5 p-md-5 p-4">
            <div class="fw-bolder mb-4"><span class="fas"></span><span class="ps-1">&#8377;199,00</span></div>
            <div class="d-flex flex-column">
                <div class="d-flex align-items-center justify-content-between text"> <span class="">Commission</span>
                    <span class="fas "> &#8377;<span class="ps-1">0.00</span></span>
                </div>
                <div class="d-flex align-items-center justify-content-between text mb-4"> <span>Total</span> <span
                        class="fas"> &#8377;<span class="ps-1">199.00</span></span> </div>
                <div class="border-bottom mb-4"></div>
                <div class="d-flex flex-column mb-4"> <span class="far fa-file-alt text"><span class="ps-2">Invoice
                            ID:</span></span> <span class="ps-3">SN8478042099</span> </div>
                <div class="d-flex flex-column mb-5"> <span class="far fa-calendar-alt text"><span class="ps-2">Date
                            </span></span> <span class="ps-3">01 , november, 2023</span> </div>
                <div class="d-flex align-items-center justify-content-between text mt-5">
                    <div class="d-flex flex-column text"> <span>Customer Support:</span> <span>Help ?</span>
                    </div>
                    <div class="btn btn-primary rounded-circle"><span class="fas fa-comment-alt"></span></div>
                </div>
            </div>
        </div>
        <div class="card box2 shadow-sm">
            <div class="d-flex align-items-center justify-content-between p-md-5 p-4"> <span
                    class="h5 fw-bold m-0">Payment methods</span>
                <!-- <div class="btn btn-primary bar"><span class="fas fa-bars"></span></div> -->
            </div>
            <ul class="nav nav-tabs mb-3 px-md-4 px-2">
                <li class="nav-item"> <a class="nav-link px-2 active" aria-current="page" href="#">Credit Card</a> </li>
                <li class="nav-item"> <a class="nav-link px-2" href="#">Mobile Payment</a> </li>
                <li class="nav-item ms-auto"> <a class="nav-link px-2" href="#"></a> </li>
            </ul>
            <div class="px-md-5 px-4 mb-4 d-flex align-items-center">
                <!-- <div class="btn btn-success me-4"><span class="fas fa-plus"></span></div> -->
                <div class="btn-group" role="group" aria-label="Basic radio toggle button group"> <input type="radio"
                        class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked> <label
                        class="btn btn-outline-primary" for="btnradio1"><span class="pe-1">+</span>49/-</label> <input
                        type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"> <label
                        class="btn btn-outline-primary" for="btnradio2"><span class="lpe-1">+</span>199/-</label> </div>
            </div>
            <form action="">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex flex-column px-md-5 px-4 mb-4"> <span>Credit Card</span>
                            <div class="inputWithIcon"> <input class="form-control" type="text"
                                    value="5136 1845 5468 3894"> <span class=""> <img
                                        src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-logok-15.png"
                                        alt=""></span> </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="d-flex flex-column ps-md-5 px-md-0 px-4 mb-4"> <span>Expiration<span
                                    class="ps-1">Date</span></span>
                            <div class="inputWithIcon"> <input type="text" class="form-control" value="11/23"> <span
                                    class="fas fa-calendar-alt"></span> </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="d-flex flex-column pe-md-5 px-md-0 px-4 mb-4"> <span>Code CVV</span>
                            <div class="inputWithIcon"> <input type="password" class="form-control" value="123"> <span
                                    class="fas fa-lock"></span> </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="d-flex flex-column px-md-5 px-4 mb-4"> <span>Name</span>
                            <div class="inputWithIcon"> <input class="form-control text-uppercase" type="text"
                                    value="Nitin Maliviya"> <span class="far fa-user"></span> </div>
                        </div>
                    </div>
                    <div class="col-12 px-md-5 px-4 mt-3">
                        <!-- <div class="btn btn-primary w-100"></div> -->
                        <button type="submit" class="btn btn-primary w-100">Pay &#8377;199.00</button>
                        <!-- <button type="reset" class="btn btn-warning w-100">clear</button> -->
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>

</html>

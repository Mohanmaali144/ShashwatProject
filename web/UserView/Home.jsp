<%-- 
    Document   : Home
    Created on : 27-Nov-2023, 9:26:36 pm
    Author     : Mohan_Maali
--%>

<!--mohan maal---------------------i-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shashwat.model.manager.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.shashwat.model.Subscription" %>

<%
      
      ArrayList<BookDAO> bookdao = (ArrayList<BookDAO>) session.getAttribute("bookdao");
      
        Subscription subdao =(Subscription)session.getAttribute("subdao");
        if(subdao!=null)
            System.out.println("home == "+subdao.isIsSubscribed());
          

%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/myprofile.css">

        <title>Home</title>
        <style>
        </style>
    </head>
    <body>

        <!--navbar-->
        <%@include file="Navbar.jsp" %>

        <!--Slide bar started  -->
        <div id="demo" class="carousel slide" data-bs-ride="carousel">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
            </div>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/willsaxpier.png" alt="quote" class="d-block" style="width:100%"; >
                </div>
                <div class="carousel-item">
                    <img src="img/ravindranath.png" alt="quote" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="img/swamijie.png" alt="quote" class="d-block" style="width:100%">
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
        <!-- banner slidbar end ----------------------- -->
        <!-- book catlog end ------------------------------------------------------------ -->
        <div class="container">
            <br>
            <center><h3>Trending</h3></center>
            <br>
            <div class="row row-cols-lg-5 row-cols-md-3">
                <%
                        for(BookDAO bdao : bookdao){
                %>

                <div class="col mb-4">
                    <div class="card">
                        <a href="ShowPDF.jsp?pdf=<%=bdao.getPdf()%>"data-toggle="modal" data-target="#bookinfo">
                            <img class="book" src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>" class="card-img-top" alt="Book 1" >
                        </a>                       
                        <div class="card-body">
                            <center><h6><%=bdao.getBookName()%></h6></center>
                            <a  class="btn btn-success" href="../BookDetails?book=<%=bdao.getBookId()%>">More</a><button class="btn btn-secondary ml-3"  data-toggle="modal" data-id="<%=bdao.getBookId()%>"   data-target="#ex<%=bdao.getBookId()%>">Borrow</button>
                        </div>
                    </div>
                </div>
                <!--------bookinfo-------------->     


                <div id="ex<%=bdao.getBookId()%>" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        Modal content
                        <div class="modal-content">

                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>" class="img-fluid rounded-start" alt="...">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title"><%=bdao.getBookName()%></h5>
                                            <h6><%=bdao.getBookName()%></h6>
                                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                            <p><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star-empty p-1"></i><i class="fa fa-star-half-o"></i></p>
                                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> 
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Reading Status
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=1">Want to Read</a>
                                                    <a class="dropdown-item" href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=2">CurrentLy Reading</a>
                                                    <a class="dropdown-item" href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=3">Already Read</a>
                                                </div>
                                                <a class="btn btn-secondary " href="myprofile/subscription?bookid=10">
                                                    Borrow
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">

                                        <div class="container mt-5">
                                            <form action="../AddBorrow">
                                                <!-- Borrow Date -->
                                                <div class="mb-3 w-50">
                                                    <label for="borrowDate" class="form-label">Borrow Date:</label>
                                                    <input type="text" class="form-control" id="borrowDate" readonly>
                                                </div>

                                                <!-- Borrow Duration -->
                                                <div class="mb-3">
                                                    <label for="borrowDuration" class="form-label">Borrow Duration:</label>
                                                    <select name="timePeriod" class="form-select w-50" id="borrowDuration" onchange="updateAmount()">
                                                        <option value="15" class="w-50">15 days</option>
                                                        <option value="30" class="w-50">1 month</option>
                                                    </select>
                                                </div>

                                                <!-- Borrow Amount -->
                                                <div class="mb-3 w-50 ">
                                                    <label for="borrowAmount" class="form-label">Borrow Amount:</label>
                                                    <input name="amount" type="text" class="form-control" id="borrowAmount" readonly>
                                                    <input value="<%=bdao.getBookId()%>" name="bookid" type="hidden" class="form-control" id="borrowAmount" readonly>
                                                </div>

                                                <button type="submit" class="btn btn-primary">Pay Amount</button>
                                            </form>
                                        </div>
                                        <script>
                                            // Function to update the amount based on the selected duration
                                            function updateAmount() {
                                                const borrowDuration = document.getElementById("borrowDuration").value;
                                                const borrowAmountField = document.getElementById("borrowAmount");

                                                // Set amount based on the selected duration
                                                if (borrowDuration === "15") {
                                                    borrowAmountField.value = "10 rupees";
                                                } else if (borrowDuration === "30") {
                                                    borrowAmountField.value = "20 rupees";
                                                }
                                            }

                                            // Function to generate system-generated borrow date
                                            function generateBorrowDate() {
                                                // Your JavaScript logic to generate the date
                                                const currentDate = new Date();
                                                const formattedDate = currentDate.toISOString().slice(0, 10);
                                                document.getElementById("borrowDate").value = formattedDate;
                                            }

                                            // Call the function to generate borrow date when the page loads
                                            window.onload = generateBorrowDate;
                                        </script>


                                    </div>
                                </div>
                            </div>

                        </div>   </div>   </div>  
                        <%
                    }
                        %>


            </div>
        </div>

        <!-- ------------------------------------------------------------------------------ -->


        <!--Slide bar started  -->
        <div id="bookbanner" class="carousel slide" data-bs-ride="carousel">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#bookbanner" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#bookbanner" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#bookbanner" data-bs-slide-to="2"></button>
                <button type="button" data-bs-target="#bookbanner" data-bs-slide-to="3"></button>
            </div>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/booksimg/booksbanner3.jpg" alt="quote" class="d-block" style="width:100%"; >

                </div>
                <div class="carousel-item">
                    <img src="img/booksimg/booksbanner2.jpg" alt="quote" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="img/booksimg/booksbanner1.jpg" alt="quote" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="img/booksimg/banner4.jpg" alt="quote" class="d-block" style="width:100%">
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#bookbanner" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#bookbanner" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
        <!-- banner slidbar end ----------------------- -->

        <!-- ----------------------------------------------------- -->

        <div class="container">
            <center><h3>Free Books</h3></center>

            <div class=" row row-cols-lg-5 row-cols-md-3">
                <%
                    for(BookDAO bdao : bookdao){
                %>
                <div class="col mb-4">
                    <div class="card">
                        <a href="#bookinfo" data-toggle="modal" data-target="#bookinfo"><img class="book" src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>" class="card-img-top" alt="Book 1" ></a>
                        <div class="card-body">
                            <a  class="btn btn-success" href="../AddBorrow">Read</a><button class="btn btn-secondary ml-3"  data-toggle="modal" data-id="<%=bdao.getBookId()%>"   data-target="#ex<%=bdao.getBookId()%>">More</button>
                        </div>
                    </div>
                </div>


                <div id="ex<%=bdao.getBookId()%>" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        Modal content
                        <div class="modal-content">

                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>" class="img-fluid rounded-start" alt="...">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title"><%=bdao.getBookName()%></h5>
                                            <h6><%=bdao.getBookName()%></h6>
                                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                            <p><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star-empty p-1"></i><i class="fa fa-star-half-o"></i></p>
                                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> 
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Reading Status
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=1">Want to Read</a>
                                                    <a class="dropdown-item" href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=2">CurrentLy Reading</a>
                                                    <a class="dropdown-item" href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=3">Already Read</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>   </div>   </div> 

                <%}%>

            </div>
        </div>

        <!-- ------------------------------------------------------ -->
        <!-- book catlog section end  -->
        <%@include file="Footer.jsp" %>
        <!-- footer -->




    </body>
</html>



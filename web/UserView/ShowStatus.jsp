<%-- 
    Document   : wanttoread
    Created on : 28-Nov-2023, 12:41:51 pm
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.shashwat.model.manager.*"%>
<%@page import="java.util.ArrayList"%>
<%

        ArrayList<BookDAO> bookdaostatus = (ArrayList<BookDAO>)session.getAttribute("bookdaostatus");
        
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
        <link rel="stylesheet" href="../css/style.css">
        <title>Home</title>
        <style>
        </style>
    </head>
    <body>

        <!--navbar-->
        <%@include file="Navbar.jsp" %>

        <!-- ----------------------------------------------------- -->


        <%
            if(bookdaostatus!=null){
            
            for(BookDAO bdao : bookdaostatus){
        
        %>

        <div class="container container-fluid d-flex justify-content-center align-items-center mt-3">

            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="../img/booksimg/book3.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Book Title</h5>
                            <h6><%=bdao.getBookName()%></h6>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <p><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star p-1"></i><i class="fa fa-star-empty p-1"></i><i class="fa fa-star-half-o"></i></p>
                            <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
                            <button class="btn btn-outline-primary">Continue Reading</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%
            }
        }else{

        %>
        <h2>No Books Added</h2>

        <% }
        
        %>






        <!-- ------------------------------------------------------ -->
        <%@include file="Footer.jsp" %>
        <!-- footer -->


        <!-- footer -->





    </body>
</html>

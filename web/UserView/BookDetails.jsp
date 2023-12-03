<%-- 
    Document   : BookDetails
    Created on : 03-Dec-2023, 12:54:58 pm
    Author     : jay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shashwat.model.manager.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
       
     
        
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>
            /*@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=M+PLUS+Rounded+1c&family=Poppins:wght@100;300;400;600&display=swap');*/
            .book-show
            {
                margin: 100px;
                height: 90vh;
                width: 80%;
                margin-left: 10%;
                display: flex;
                justify-content: center;
                align-items: center;
                /* flex-direction: column; */
                justify-content: space-around;
            }
            .book-show .book-img-container
            {
                height: 600px;
                width: 47.5%;
                /* background-color: beige; */
                display: flex;
                flex-direction: column;
                /* justify-content: center; */
                align-items: center;
                padding-top: 20px;
            }
            .book-show .book-details
            {
                padding-top: 20px;
                height: 600px;
                width: 47.5%;
                /* background-color: beige; */
            }
            .bx
            {
                color: goldenrod;
                font-size: 24px;
            }
            .book-name{
                font-family: 'poppins' sans-serif;
                font-size: 25px !important ;
            }
            /* --------- */
            .author-name
            {

                font-family: 'poppins' sans-serif;
                font-size: 18px !important ;
            }
            /* ----------------- */
            .ratings{

            }
            /* -------------------- */
            .book-details{

            }
            /* ----------- */
            .btn
            {
                height: 38px;
                font-style: bold;
                width: 80px;
                background-color: goldenrod;
                color: #fff;
            }

            .btn:hover
            {
                height: 38px;
                font-style: bold;
                width: 80px;
                background-color: #fff;
                color: goldenrod;
            }

            @media only screen and (max-width: 600px) {

                .book-show
                {
                    height: 90vh;
                    width: 80%;
                    /* background-color: aqua; */
                    margin-left: 10%;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    justify-content: space-around;
                }
                .book-show .book-img-container
                {
                    height: 500px;
                    width: 47.5%;
                    /* background-color: beige; */
                    display: flex;
                    flex-direction: column;
                    /* justify-content: center; */
                    align-items: center;
                    padding-top: 20px;
                }
                .book-show .book-details
                {
                    padding-top: 20px;
                    height: 500px;
                    width: 47.5%;
                    /* background-color: beige; */
                }
                .bx
                {
                    color: goldenrod;
                    font-size: 24px;
                }
                .book-name{
                    font-family: 'poppins' sans-serif;
                    font-size: 25px !important ;
                }
                /* --------- */
                .author-name
                {

                    font-family: 'poppins' sans-serif;
                    font-size: 18px !important ;
                }
                /* ----------------- */
                .ratings{

                }
                /* -------------------- */
                .book-details{

                }
                /* ----------- */
                /* .btn
                {
                    height: 38px;
                    font-style: bold;
                    width: 80px;
                    background-color: goldenrod;
                    color: #fff;
                }

                .btn:hover
                {
                    height: 38px;
                    font-style: bold;
                    width: 80px;
                    background-color: #fff;
                    color: goldenrod;
                } */

            }
        </style>

        <link
            href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
            rel="stylesheet"/>
        <%@include file="Navbar.jsp" %>

        <%
      
      ArrayList<BookDAO> bookdao = (ArrayList<BookDAO>) session.getAttribute("bookdetails");

        %>
    </head>
    <body>
        <%
                           for(BookDAO bdao : bookdao){
        %>
        <section class="book-show">

            <div class="book-img-container">

                <img src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>" alt="Book image" height="250" width="180" style="background-color: rgb(211, 136, 136) ;">
                <!-- ------------ -->


                <h3 class="book-name"><%=bdao.getBookName()%></h3>


                <!-- -------------- -->
                <h4 class="author-name"><%=bdao.getAuthorName()%></h4>
                <!-- --------------------- -->
                <div class="ratings">
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star"></i>
                    <i class="bx bxs-star-half"></i>
                    <i class="bx bxs-star-half"></i>
                </div>
                <div class="w3-container">

                    <div class="w3-dropdown-hover">
                        <button class="w3-button w3-light-blue">Reading Status</button>
                        <div class="w3-dropdown-content w3-bar-block w3-border">
                            <a href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=1" class="w3-bar-item w3-button">Want to Read</a>
                            <a href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=2" class="w3-bar-item w3-button">CurrentLy Reading</a>
                            <a href="../AddReadingStatus?bookid=<%=bdao.getBookId()%>&test=3" class="w3-bar-item w3-button">Already Read</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- -------------------- -->

            <div  class="book-details container-fluid">
                <div class="h-50   mb-2">
                    <h4 class="description p-3">Description</h4>
                    <P class="description-text p-3 font-monospace" >
                        <%=bdao.getDiscription()%>
                    </P>
                </div>
                <div class="details-books h-25 p-3 w-100 d-flex justify-content-around">
                    <span style="color: black; font-size: 16px; font-style: bold;">Genre : <%=bdao.getGenre()%></span>
                    <!-- only display -->
                    <span style="color: black; font-size: 16px; font-style: bold">Publishing Year : <%=bdao.getPublishingYear()%></span>
                    <!-- only display -->
                </div>

                <div class="d-flex justify-content-center w-100 justify-content-around ">
                    <a href="" class="text-decoration-none btn">Read</a>
                    <a href="" class="text-decoration-none btn">Borrow</a>
                    <a href="" class="text-decoration-none btn">Review</a>
                </div>
            </div>


        </section>
        <%}%>

        <%@include file="Footer.jsp" %>
         </body>
</html>
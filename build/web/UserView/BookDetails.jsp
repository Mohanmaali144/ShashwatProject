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
        <link rel="stylesheet" href="css/Review.css">
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
            /*-----------------------------*/



            .modal {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0,0,0,0.7);
                align-items: center;
                justify-content: center;
            }

            .modal-content {
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                width: 400px;
            }

            label {
                display: block;
                margin-bottom: 8px;
            }

            input, textarea {
                width: 100%;
                padding: 8px;
                margin-bottom: 16px;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            button {

                color: white;

                border-radius: 10px !important;
                background-color: #4978F0;
                padding: 6px 13px;
            }

            button:hover {
                background-color: #4978F0;
            }

            .close {
                position: absolute;
                top: 10px;
                right: 10px;
                font-size: 20px;
                cursor: pointer;
            }


            /*--------------------------*/
        </style>

        <link
            href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
            rel="stylesheet"/>
        <%@include file="Navbar.jsp" %>

        <%
      
      ArrayList<BookDAO> bookdao = (ArrayList<BookDAO>) session.getAttribute("bookdetails");


        int bookidm =  0;
        
        %>
    </head>
    <body>
        <%
                           for(BookDAO bdao : bookdao){
                           
                            bookidm = bdao.getBookId();
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
                    <a href="ShowPDF.jsp?pdf=<%=bdao.getPdf()%>&bookid=<%=bdao.getBookId()%>" class="text-decoration-none btn">Read</a>
                    <a href="" class="text-decoration-none btn">Borrow</a>
                    <!--<a href="" class="text-decoration-none btn">Review</a>-->
                    <button  class="text-decoration-none btn" onclick="openModal()">Review</button>

                </div>
            </div>


        </section>
        <%}%>

        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal()">&times;</span>

                <form action="../AddReview" id="bookReviewForm">
                    <label for="review">Your Review About The Book:</label>
                    <textarea style="color: black;" id="review" name="review" rows="4" required></textarea>

                    <label for="rating">Rating (1-5):</label>
                    <input type="number" id="rating" name="rating" min="1" max="5" required>

                    <input type="hidden"  name="bookid"  value="<%=bookidm%>">
                    <button type="submit" onclick="submitReview()">Submit Review</button>
                </form>
            </div>
        </div>

        <script>
            function openModal() {
                document.getElementById("myModal").style.display = "block";
            }

            function closeModal() {
                document.getElementById("myModal").style.display = "none";
            }

            function submitReview() {
                // Get form values
                var bookTitle = document.getElementById("bookTitle").value;
                var authorName = document.getElementById("authorName").value;
                var review = document.getElementById("review").value;
                var rating = document.getElementById("rating").value;

                // Perform validation if needed

                // Display the submitted values (you can send them to the server in a real-world application)
                alert("Review Submitted!\n\nBook Title: " + bookTitle + "\nAuthor Name: " + authorName + "\nReview: " + review + "\nRating: " + rating);

                // Close the modal after submission
                closeModal();
            }
        </script>

        <!--yeh js aur modal-->


        <%@include file="Footer.jsp" %>
         </body>
</html>
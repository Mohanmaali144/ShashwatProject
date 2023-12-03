<%-- 
    Document   : Footer
    Created on : 02-Dec-2023, 2:11:51 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shashwat.model.manager.*" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/myprofile.css">

        <title>Home</title>
        <style>
        </style>
        <script>

            document.addEventListener('contextmenu', function (e) {
                e.preventDefault();
            });

        </script>
    </head>

    <body>
        <footer class="bgfooter text-light">
            <div class="container">
                <div class="row">
                    <!-- Quick Links Section -->
                    <div class="col-md-4">
                        <center>
                            <h5>Quick Links</h5>
                        </center>
                        <center>
                            <ul class="list-unstyled">
                                <li><a href="Home.jsp">Home</a></li>
                                <li><a href="catgory.jsp">catgory</a></li>
                                <li><a href="blog.jsp">Blogs</a></li>
                                <li><a href="podcast.jsp">Podcast</a></li>
                                <li><a href="audiobook.jsp">Audio Books</a></li>
                                <li><a href="tutorial.jsp">Tutorials</a></li>
                                <li><a href="aboutus.jsp">About Us</a></li>
                                <li><a href="contactus.jsp">Contact</a></li>
                            </ul>
                        </center>
                    </div>

                    <!-- Social Handles Section -->
                    <div class="col-md-4">
                        <center>
                            <h5>Social Handles</h5>
                        </center>
                        <center>
                            <ul class="list-unstyled">
                                <li><a href="#">Facebook</a></li>
                                <li><a href="#">Twitter</a></li>
                                <li><a href="#">Instagram</a></li>
                                <li><a href="#">LinkedIn</a></li>
                            </ul>
                        </center>
                    </div>

                    <!-- Feedback Form Section -->
                    <div class="col-md-4">
                        <center>
                            <h5>Feedback</h5>
                        </center>
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control"
                                       placeholder="Your Name">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control"
                                       placeholder="Your Email">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" rows="3"
                                          placeholder="Your Feedback"></textarea>
                            </div>
                            <button type="submit"
                                    class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer  -->

        <div style="height: 40px; padding:5px; font-weight: 500;">
            <center>All Rights & &#169; Reserved by Tech-Phoenix</center>
        </div>


        <!-- footer -->




    </body>

</html>
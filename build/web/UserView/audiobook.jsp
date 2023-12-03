<%-- 
    Document   : audiobook
    Created on : 28-Nov-2023, 12:24:36 pm
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            /* Add custom CSS styles here */
            .video-container {
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .video {
                max-width: 100%;
                height: 240px; /* Increase the height */
            }
            .col-md-5 {
                margin-left: 0; /* Remove left margin */
            }
            .align-left {
                text-align: left;
            }
            .ul li a:hover
            {
                background-color: black;
                color: aliceblue;
            }
            .audio
            {
                display: flex;
                align-items: left;
                border-radius: 0%;
                background-color: #F1F3F4;
                color: black;
            }

        </style>
    </head>
    <body>
        <!-- ------------------------------------------------------ -->

        <!--navbar-->
        <%@include file="Navbar.jsp" %>


        <!-- this page body  -------------------------------- -->

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <img src="Audio/book2.jpeg" alt="Book Poster" class="img-fluid" />
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Bookname</h2>
                    <h4 class="align-left">Author name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. 
                    </p>
                    <audio controls class="audio">
                        <source src="horse.ogg" type="audio/ogg">
                        <source src="horse.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <img src="Audio/book3.jpeg" alt="Book Poster" class="img-fluid" />
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Bookname</h2>
                    <h4 class="align-left">Author name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. 
                    </p>
                    <audio controls class="audio">
                        <source src="horse.ogg" type="audio/ogg">
                        <source src="horse.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <img src="Audio/book4.jpeg" alt="Book Poster" class="img-fluid" />
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Bookname</h2>
                    <h4 class="align-left">Author name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. 
                    </p>
                    <audio controls class="audio">
                        <source src="horse.ogg" type="audio/ogg">
                        <source src="horse.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <img src="Audio/book4.jpeg" alt="Book Poster" class="img-fluid" />
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Bookname</h2>
                    <h4 class="align-left">Author name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. 
                    </p>
                    <audio controls class="audio">
                        <source src="horse.ogg" type="audio/ogg">
                        <source src="horse.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <img src="Audio/book4.jpeg" alt="Book Poster" class="img-fluid" />
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Bookname</h2>
                    <h4 class="align-left">Author name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. 
                    </p>
                    <audio controls class="audio">
                        <source src="horse.ogg" type="audio/ogg">
                        <source src="horse.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <img src="Audio/book4.jpeg" alt="Book Poster" class="img-fluid" />
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Bookname</h2>
                    <h4 class="align-left">Author name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. 
                    </p>
                    <audio controls class="audio">
                        <source src="horse.ogg" type="audio/ogg">
                        <source src="horse.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <img src="Audio/book4.jpeg" alt="Book Poster" class="img-fluid" />
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Bookname</h2>
                    <h4 class="align-left">Author name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. 
                    </p>
                    <audio controls class="audio">
                        <source src="horse.ogg" type="audio/ogg">
                        <source src="horse.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <img src="Audio/book4.jpeg" alt="Book Poster" class="img-fluid" />
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Bookname</h2>
                    <h4 class="align-left">Author name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. 
                    </p>
                    <audio controls class="audio">
                        <source src="horse.ogg" type="audio/ogg">
                        <source src="horse.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </div>
            </div>
        </div>


        <br><br><br>
        <!-- this page boady -------------------------------- -->



        <%@include file="Footer.jsp" %>
        <!-- footer -->

        <!-- footer -->
    </body>
</html>>
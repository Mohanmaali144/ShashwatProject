<%-- 
    Document   : podcast
    Created on : 28-Nov-2023, 12:14:30 pm
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
        </style>
    </head>
    <body>

        <!--navbar-->
        <%@include file="Navbar.jsp" %>

        <!--  -->
        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <div class="container text-center mt-4">
            <div class="row ms-auto">
                <div class="col-md-5 video-container">
                    <video class="video" controls>
                        <source src="movie.mp4" type="video/mp4" />
                        <source src="movie.ogg" type="video/ogg" />
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-7 mt-4 text-left">
                    <h2 class="align-left">Title</h2>
                    <h4 class="align-left">Host Name</h4>
                    <p class="align-left">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Culpa
                        soluta beatae quam quae ea omnis Lorem ipsum dolor sit amet
                        consectetur adipisicing elit. Alias obcaecati at necessitatibus
                        tenetur rerum aliquid totam odit cupiditate, tempora adipisci
                        possimus deserunt quisquam harum id eius quibusdam, eveniet error!
                        Culpa!
                    </p>
                </div>
            </div>
        </div>

        <br><br><br><br>

        <!--  -->
        <%@include file="Footer.jsp" %>
        <!-- footer -->

        <!-- footer -->
    </body>
</html>>

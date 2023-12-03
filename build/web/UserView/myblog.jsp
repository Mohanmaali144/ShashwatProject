<%-- 
    Document   : myblog
    Created on : 28-Nov-2023, 12:41:04 pm
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
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" type="text/css" href="../css/blog.css">
        <title>Home</title>
        <style>
        </style>
    </head>
    <body>



        <!--navbar-->
        <%@include file="Navbar.jsp" %>
        <!-- ----------------------------------------------------- -->
        <section>


            <div class="background">
                <div class="centering">
                    <div class="articles">
                        <article>
                            <figure>
                                <img
                                    src="https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=900&t=st=1687123388~exp=1687123988~hmac=f3410d0a5c2f20aec66c7d763c789bf0aae9c5026366fe41ae7d18e05e7e406b"
                                    alt="Preview"
                                    >
                            </figure>
                            <div class="article-preview">
                                <h2>My Blog</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                                    Praesent in mauris eu tortor porttitor accumsan. 
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                                    Praesent in mauris eu tortor porttitor accumsan. 
                                    <a href="#" class="read-more" title="Read More">
                                        Read more
                                    </a><br>
                                    <button class="btn btn-outline-primary float-end">Delete</button><br>
                                </p>
                            </div>
                        </article>
                        <article>            
                            <figure>
                                <img
                                    src="https://img.freepik.com/free-photo/beautiful-aerial-shot-fronalpstock-mountains-switzerland-beautiful-pink-blue-sky_181624-9315.jpg?w=900&t=st=1687123407~exp=1687124007~hmac=15a1b5a4d3a5af66dfba67bdcd577f769f813bf06fc8b5e50f32f6503099bbd8"
                                    alt="Preview"
                                    >
                            </figure>
                            <div class="article-preview">
                                <h2>My Blog</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                                    Praesent in mauris eu tortor porttitor accumsan. 
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                                    Praesent in mauris eu tortor porttitor accumsan. 
                                    <a href="#" class="read-more" title="Read More">
                                        Read more
                                    </a><br>
                                    <button class="btn btn-outline-primary float-end">Delete</button><br>
                                </p>
                            </div>
                        </article>
                        <article>
                            <figure>
                                <img
                                    src="https://img.freepik.com/free-photo/tropical-beach_74190-188.jpg?w=1800&t=st=1687169672~exp=1687170272~hmac=b66f9b9c1e344cbfe6fe2e5f65e94ebb8d418dad2e2af2b892ad9ac60e9eb79c"
                                    alt="Preview"
                                    >
                            </figure>
                            <div class="article-preview">
                                <h2>My Blog</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent in mauris eu tortor porttitor accumsan. 
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent in mauris eu tortor porttitor accumsan. 

                                    <a href="#" class="read-more">
                                        Read more
                                    </a>
                                    <br>
                                    <button class="btn btn-outline-primary float-end">Delete</button><br>
                                </p>
                            </div>
                        </article>
                    </div>
                </div>
            </div>



        </section>




        <!-- ------------------------------------------------------ -->

        <!-- ------------------------------------------------------ -->
        <%@include file="Footer.jsp" %>
        <!-- footer -->





    </body>
</html>

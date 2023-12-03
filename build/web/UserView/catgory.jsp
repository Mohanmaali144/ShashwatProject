<%-- Document : catgory Created on : 28-Nov-2023, 12:22:13 pm Author : NexGen --%>



<%@page import="com.shashwat.model.manager.*" %>
<%@page import="java.util.ArrayList" %>

<%      
    
//        ArrayList<BookDAO> bcategory = (ArrayList<BookDAO>) session.getAttribute("bcategory");

//              ArrayList<BookDAO> genredao = (ArrayList<BookDAO>) session.getAttribute("genredao");

%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%-- Document : Home Created on : 27-Nov-2023, 9:26:36 pm Author : Mohan_Maali --%>

<!--mohan maal---------------------i-->

<%--<%@page contentType="text/html" pageEncoding="UTF-8" %>--%>


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
    </head>

    <body>
       
        <!--navbar-->
           <%@include file="Navbar.jsp" %>
        
        <!-- book catlog end -------------------------------------------------------------->
        <div class="container">
            <br>
            <center>
                <h3 style="text-transform:capitalize">
                    <%=bcategory.get(0).getGenre()%>
                </h3>
            </center>
            <br>
            <div class="row row-cols-lg-5 row-cols-md-3">
                <% for(BookDAO bdao : bcategory){ %>

                <div class="col mb-4">
                    <div class="card">
                        <a href="" data-toggle="modal"
                           data-target="#bookinfo"><img class="book"
                                                     src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>"
                                                     class="card-img-top" alt="Book 1"></a>
                        <div class="card-body">
                            <button
                                class="btn btn-success">Borrrow</button><button
                                class="btn btn-secondary ml-3"
                                data-toggle="modal"
                                data-id="<%=bdao.getBookId()%>"
                                data-target="#ex<%=bdao.getBookId()%>">More</button>
                        </div>
                    </div>
                    <!--------bookinfo-------------->


                    <div id="ex<%=bdao.getBookId()%>" class="modal fade"
                         role="dialog">
                        <div class="modal-dialog">
                            Modal content
                            <div class="modal-content">

                                <div class="card mb-3"
                                     style="max-width: 540px;">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>"
                                                 class="img-fluid rounded-start"
                                                 alt="...">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <h5 class="card-title">
                                                    <%=bdao.getBookName()%>
                                                </h5>
                                                <h6>
                                                    <%=bdao.getBookName()%>
                                                </h6>
                                                <p class="card-text">This is a
                                                    wider card with supporting
                                                    text below as a natural
                                                    lead-in to additional
                                                    content. This content is a
                                                    little bit longer.</p>
                                                <p><i
                                                        class="fa fa-star p-1"></i><i
                                                        class="fa fa-star p-1"></i><i
                                                        class="fa fa-star p-1"></i><i
                                                        class="fa fa-star-empty p-1"></i><i
                                                        class="fa fa-star-half-o"></i>
                                                </p>
                                                <p class="card-text"><small
                                                        class="text-muted">Last
                                                        updated 3 mins
                                                        ago</small></p>
                                                <div class="dropdown">
                                                    <button
                                                        class="btn btn-secondary dropdown-toggle"
                                                        type="button"
                                                        id="dropdownMenuButton"
                                                        data-toggle="dropdown"
                                                        aria-haspopup="true"
                                                        aria-expanded="false">
                                                        Reading Status
                                                    </button>
                                                    <div class="dropdown-menu"
                                                         aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item"
                                                           href="../ServletName?bookid=<%=bdao.getBookId()%>">Want
                                                            to Read</a>
                                                        <a class="dropdown-item"
                                                           href="../ServletName?bookid=<%=bdao.getBookId()%>">CurrentLy
                                                            Reading</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>
                <% } %>
            </div>

            <!-- book display end  ------------------------------------------------------------------------------ -->


        <%@include file="Footer.jsp" %>
            <!-- footer -->


    </body>

</html>
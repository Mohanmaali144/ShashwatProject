<%-- 
    Document   : myblog
    Created on : 28-Nov-2023, 12:41:04 pm
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shashwat.model.BlogDAO" %>
<%@page import="java.util.ArrayList" %>
<%
    ArrayList<BlogDAO> userblog = ( ArrayList<BlogDAO>)session.getAttribute("userblog");
    
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

        <link rel="stylesheet" type="text/css" href="css/blog.css">
        <title>Home</title>
        <style>
        </style>
    </head>
    <body>


        <!--navbar-->
        <%@include file="profilenavbar.jsp" %>
        <!-- ----------------------------------------------------- -->
        <section>



            <div class="background">
                <div class="centering">
                    <div class="articles">
                        <%
                    System.out.println("afterdelite this"+userblog);
                    if(userblog!=null){
                    
                   
                    for(BlogDAO bdao : userblog){
            
                        %>
                        <article>
                            <figure>
                                <img
                                    src="blog_img/<%=bdao.getImgage()%>"
                                    alt="Preview"
                                    >
                            </figure>
                            <div class="article-preview">
                                <h2><%=bdao.getTitle()%></h2>
                                <h6><%=bdao.getPublicationDate()%></h6>
                                <p>

                                    <%=bdao.getContent()%>
                                    <a href="#" class="read-more" title="Read More">
                                        Read more
                                    </a><br>
                                    <a href="../DeleteBlog?blog_id=<%=bdao.getBlogId()%>" class="btn btn-outline-primary text-light float-end">Delete</a><br>
                                </p>
                            </div>
                        </article> <%}
                }%>

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

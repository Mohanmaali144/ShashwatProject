<%-- 
    Document   : search
    Created on : 04-Dec-2023, 9:37:46 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
      
      ArrayList<BookDAO> bookdao = (ArrayList<BookDAO>) session.getAttribute("searchItem");

        %>
        <%@include file="Navbar.jsp" %>

        <!--Slide bar started  -->

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
                    <a href="ShowPDF.jsp?pdf=<%=bdao.getPdf()%>"data-toggle="modal" data-target="#bookinfo"><img class="book" src="/SHASHWAT/Bookimg/<%=bdao.getImg()%>" class="card-img-top" alt="Book 1" ></a>                       
                    <div class="card-body">
                        <a  class="btn btn-success" href="ShowPDF.jsp?pdf=<%=bdao.getPdf()%>">Borrrow</a>
                        <form action="../BookDetails">
                            <button class="btn btn-secondary ml-3" name="book"   value="<%=bdao.getBookId()%>" type="submit">More</button>
                        </form>
                    </div>
                </div>
            </div>
            <%}%>
            </body>
                     </html>


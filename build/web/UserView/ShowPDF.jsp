<%-- 
    Document   : ShowPDF
    Created on : 02-Dec-2023, 11:41:17 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shashwat.model.manager.*" %>
<%@page import="com.shashwat.model.Subscription" %>
<%@page import="java.util.ArrayList" %>
<%@page import="com.shashwat.model.Borrow" %>


<%      
        String bid = request.getParameter("bookid");
        int bookid=0;
        if(bid!=null){
            bookid = Integer.parseInt(bid);
          }

        Subscription subdao =(Subscription)session.getAttribute("subdao");
        ArrayList<Borrow> borrowdao =(ArrayList<Borrow>)session.getAttribute("borrowdao"); 
        boolean flag = false;
        if(borrowdao!=null){
         System.out.println("pdf show");
            for(Borrow borrow: borrowdao){

                    if(borrow.getBookId()==bookid){
                        flag=true;
                        break;
                    }
                    System.out.println(borrow.getBookId());
                     System.out.println(bookid);
                }
          }
       
        if(subdao!=null || flag ){
        System.out.println("it is subscribed"+subdao.isIsSubscribed());
        if(subdao.isIsSubscribed() || flag){        
%>
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
        <%@include file="Navbar.jsp" %>

        <!-- book catlog end -------------------------------------------------------------->
        <div>
            <embed src="/SHASHWAT/BookPDF/<%=pdf%>#toolbar=0" height="500" width="100%">
        </div>

        <!-- book display end  ------------------------------------------------------------------------------ -->
        <%@include file="Footer.jsp" %>


        <!-- footer -->
    </body>

</html>
<%
    }else{

        response.sendRedirect("subscription.jsp");

        }
}else{

        response.sendRedirect("subscription.jsp");

        }
%>
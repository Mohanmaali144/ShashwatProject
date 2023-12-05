<%-- 
    Document   : profile.jsp
    Created on : 29-Nov-2023, 1:26:02 am
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shashwat.model.UserDAO"%>
<%@page import="com.shashwat.model.UserDTO"%>

<%
        UserDAO udao = (UserDAO)session.getAttribute("udao");

%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Sidebar Menu | Side Navigation Bar</title>
        <!-- link ----------------------- -->

        <link rel="stylesheet" href="./css/profile1.css">

        <!-- link ends  -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <!-- bootsrap ------------------- -------------- ------------------- -->
        <!-- CSS -->
        <link rel="stylesheet" href="css/notification.css" />
        <!-- Boxicons CSS -->
        <link
            href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
            rel="stylesheet"
            />
        <style>
            #file-input {
                display: none;
            }
        </style>
    </head>
    <body>
        
        
        
        <!--------------------->
        <%@include file="profilenavbar.jsp" %>
        <!-- -------------------------------------------------------------------------------------- -->
        <!-- profile section card started  -->

        <section class="vh-70">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-lg-6 mb-4 mb-lg-0">
                        <div class="card mb-3" style="border-radius: .5rem;">
                            <div class="row g-0">
                                <div class="col-md-4 gradient-custom text-center text-white"
                                     style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                                    <img src="images/profile_1.png"                  alt="Avatar" class="img-fluid my-5" style="width: 120px;" />
                                    <!-- uplode image -->
                                    <input type="file" id="file-input" name="file-input" />

                                    <label id="file-input-label" class="bx bx-upload btn btn-grad text-light border-info" htmlFor="file-input">
                                        Upload Image
                                    </label>
                                    <!-- <i class="bx bx-upload btn btn-success"></i> -->
                                    <!-- full name -->
                                    <h5></h5>
                                    <!-- username -->
                                    <p><%=udao.getUsername()%></p>
                                    <i class="far fa-edit mb-5"></i>
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body p-4">
                                        <h6>Information</h6>
                                        <hr class="mt-0 mb-4">
                                        <div class="row pt-1">
                                            <div class="col-6 mb-3">
                                                <h6>Email</h6>
                                                <!-- email display -->
                                                <p class="text-muted"><%= udao.getEmail() %></p>
                                            </div>
                                            <div class="col-6 mb-3">
                                                <h6>Phone</h6>
                                                <!-- display phone no -->
                                                <p class="text-muted">+91 <%= udao.getMobile() %></p>
                                            </div>
                                        </div>
                                        <h6>Additional Information</h6>
                                        <hr class="mt-0 mb-4">
                                        <div class="row pt-1">
                                            <div class="col-6 mb-3">
                                                <h6>Date of Birth</h6>
                                                <p class="text-muted">03-04-2002</p>
                                            </div>
                                            <div class="col-6 mb-3">
                                                <h6>Gendar : </h6>
                                                <!-- diplay gender -->
                                                <p class="text-muted"><%= udao.getGender() %></p>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-start">
                                            <a href="#!"  class="btn btn-secondary" data-toggle="modal" data-target="#profileupdate"><i class="bx bx-upload btn btn-secondary"></i> Update Profle</a>
                                            <!-- <a href="" class="btn btn-light"><i class=""></i></a> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>





        <!-- profile card ends  -->
        <!-- update  profile card details  start  -->
        <div class="modal" tabindex="-1" id="profileupdate" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Update Profile</h5>
                    </div>
                    <form action="">
                        <div class="modal-body">
                            <!-- user details goes here  -->


                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" id="email" placeholder="Enter your email" value="<%= udao.getEmail() %>">
                                    <p></p>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="phone">Phone</label>
                                    <input type="tel" class="form-control" id="phone" placeholder="Enter your phone number" value="<%= udao.getMobile() %>">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" id="username" placeholder="Enter your username" value="<%=udao.getUsername()%>">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="fullname">Full Name</label>
                                    <input type="text" class="form-control" id="fullname" placeholder="Enter your full name" value="<%=udao.getFullname()%>">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="dob">Date of Birth</label>
                                    <input type="text" class="form-control" id="dob" value="<%= udao.getDob() %>" >
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="gender">Gender</label>
                                    <select class="form-control" id="gender">
                                        <option selected=""><%= udao.getGender() %></option>>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">Other</option>
                                    </select>
                                </div>
                            </div>



                            <!-- user details ends  -->
                        </div>
                        <div class="modal-footer">
                            <!-- updaet  profile form  -->
                            <button type="button" class="btn btn-primary"><a href="" class="text-decoration-none text-light ">Update Profile</a></button>
                    </form>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>







    <!-- profile details ends  -->
    <!-- ------------------------------------------------------------ -->


</body>
</html>


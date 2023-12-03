<%-- 
    Document   : premiumoffer
    Created on : 03-Dec-2023, 11:24:50 am
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>Sidebar Menu | Side Navigation Bar</title>
   <!-- link ----------------------- -->
   
   <link rel="stylesheet" href="../css/profile1.css">
  
   <!-- link ends  -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <!-- bootsrap ------------------- -------------- ------------------- -->
    <!-- CSS -->
    <link rel="stylesheet" href="../css/sidebar.css" />
    <link rel="stylesheet" href="../css/notification.css" />
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
    <nav class="navbar">
      <div class="logo">
        <i class="bx bx-menu menu-icon"></i>
        <span class="logo-name">SHASHWAT</span>
        <a href="notification.jsp" class="notification" style="text-decoration: none; color: white; margin-left: 80%">
            <span class="badge">3</span>
        <i class="bx bx-bell icon" style="font-size: 22px ; color: #fff; ;"></i>

        </a>
      </div>
    <div class="sidebar">
        

        <div class="sidebar-content">
          <ul class="lists">
            <li class="list">
              <a href="newpost.jsp" class="nav-link">
                <i class="bx bx-pointer icon"></i>
                <span class="link">+ New Post</span>
              </a>
            </li>
            <li class="list">
                <a href="profile.jsp" class="nav-link">
                  <i class="bx bx-user-pin icon"></i>
                  <span class="link">My Profile</span>
                </a>
              </li>
            <li class="list">
                <a href="myblog.jsp" class="nav-link">
                <i class="bx bx-book-alt icon"></i>
                <span class="link">My Blog</span>
              </a>
            </li>
           
            
            <li class="list">
                <a href="subscription.jsp" class="nav-link">
                <i class="bx bxs-user-badge icon"></i>
                <span class="link">Get Premium</span>
              </a>
            </li>
            <li class="list">
                <a href="likes.jsp" class="nav-link">
                <i class="bx bx-heart icon"></i>
                <span class="link">Likes</span>
              </a>
            </li>
            <li class="list">
              <a href="#" class="nav-link">
                <i class="bx bx-list-check icon"></i>
                <span class="link">My Reading List</span>
              </a>
            </li>
           
              <li class="list">
                <a href="#" class="nav-link">
                  <i class="bx bx-log-out icon"></i>
                  <span class="link">Logout</span>
                </a>
              </li>
          </ul>

         
        </div>
      </div>
    </nav>

    <section class="overlay"></section>

    <script src="../js/sidebar.js"></script>
<!-- -------------------------------------------------------------------------------------- -->
<!--  section card started  -->
<!--s details ends  -->
<!-- ------------------------------------------------------------ -->


</body>
</html>



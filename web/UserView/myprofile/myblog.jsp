<%-- 
    Document   : myblog
    Created on : 28-Nov-2023, 12:41:04?pm
    Author     : NexGen
--%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>Sidebar Menu | Side Navigation Bar</title>
    <!-- CSS -->
    <link rel="stylesheet" href="../css/sidebar.css" />
    <link rel="stylesheet" href="../css/blog.css">
    <link rel="stylesheet" href="../css/likeanddelete.css">
    <link rel="stylesheet" href="../css/notification.css">    
    
    <!-- Boxicons CSS -->
    <link
      href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
      rel="stylesheet"
    />

  </head>
  <body>
    <nav>
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
<br><br><br>
<center><h2>My Blogs</h2></center>
    <section>
            <!--Slide bar started ------------------------------------------------------------ -->
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
                        <h2> Blog 1</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Praesent in mauris eu tortor porttitor accumsan. <br><br>
                            <a href="#" class="read-more" title="Read More">
                                Read more
                            </a>
                            <div class="btns">
                                <div class="likebtn">
                                    <div class="container">
                                        <div class="like_button">
                                             <i class='bx bx-like'></i> 
                                             <span class="like_text">Like</span> 
                                        </div>
                                    </div>
                                </div>
                                <div class="deletebtn">
                                    <button class="noselect"><span class="text">Delete all</span><span class="icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M24 20.188l-8.315-8.209 8.2-8.282-3.697-3.697-8.212 8.318-8.31-8.203-3.666 3.666 8.321 8.24-8.206 8.313 3.666 3.666 8.237-8.318 8.285 8.203z"></path></svg></span></button>
                                </div>

                            </div>      
                        </p>
                    </div>
                </article>

                <!-- --------------------------------------- -->

                <article>
                    <figure>
                        <img
                            src="https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=900&t=st=1687123388~exp=1687123988~hmac=f3410d0a5c2f20aec66c7d763c789bf0aae9c5026366fe41ae7d18e05e7e406b"
                            alt="Preview"
                        >
                    </figure>
                    <div class="article-preview">
                        <h2> Blog 1</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Praesent in mauris eu tortor porttitor accumsan. <br><br>
                            <a href="#" class="read-more" title="Read More">
                                Read more
                            </a>
                            <div class="btns">
                                <div class="likebtn">
                                    <div class="container">
                                        <div class="like_button">
                                             <i class='bx bx-like'></i> 
                                             <span class="like_text">Like</span> 
                                        </div>
                                    </div>
                                </div>
                                <div class="deletebtn">
                                    <button class="noselect"><span class="text">Delete all</span><span class="icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M24 20.188l-8.315-8.209 8.2-8.282-3.697-3.697-8.212 8.318-8.31-8.203-3.666 3.666 8.321 8.24-8.206 8.313 3.666 3.666 8.237-8.318 8.285 8.203z"></path></svg></span></button>
                                </div>

                            </div>      
                        </p>
                    </div>
                </article>


                <!-- ----------------------------------------- -->



                <article>
                    <figure>
                        <img
                            src="https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=900&t=st=1687123388~exp=1687123988~hmac=f3410d0a5c2f20aec66c7d763c789bf0aae9c5026366fe41ae7d18e05e7e406b"
                            alt="Preview"
                        >
                    </figure>
                    <div class="article-preview">
                        <h2> Blog 1</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Praesent in mauris eu tortor porttitor accumsan. <br><br>
                            <a href="#" class="read-more" title="Read More">
                                Read more
                            </a>
                            <div class="btns">
                                <div class="likebtn">
                                    <div class="container">
                                        <div class="like_button">
                                             <i class='bx bx-like'></i> 
                                             <span class="like_text">Like</span> 
                                        </div>
                                    </div>
                                </div>
                                <div class="deletebtn">
                                    <button class="noselect"><span class="text">Delete all</span><span class="icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M24 20.188l-8.315-8.209 8.2-8.282-3.697-3.697-8.212 8.318-8.31-8.203-3.666 3.666 8.321 8.24-8.206 8.313 3.666 3.666 8.237-8.318 8.285 8.203z"></path></svg></span></button>
                                </div>

                            </div>      
                        </p>
                    </div>
                </article>
    </section>

    <script src="../js/sidebar.js"></script>
  </body>
</html>

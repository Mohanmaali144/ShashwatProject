<%-- 
    Document   : newpost
    Created on : 29-Nov-2023, 1:24:39 am
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Create Blog</title>

        <style>
            section {
                font-family: Arial, sans-serif;
                margin: 20px;
            }

            form {
                max-width: 600px;
                margin: auto;
            }

            label {
                display: block;
                margin-bottom: 8px;
            }

            input, select, textarea {
                width: 100%;
                padding: 8px;
                margin-bottom: 16px;
                box-sizing: border-box;
            }

            textarea {
                resize: vertical;
            }

            button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <!------------>
        <%@include file="profilenavbar.jsp" %>
        <!------------>
        <section>
            <form id="blogForm" action="../BlogInsert">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required>

                <label for="category">Category:</label>
                <select id="category" name="category" required>
                    <option value="" disabled selected>Select a category</option>
                    <option value="technology">Technology</option>
                    <option value="travel">Travel</option>
                    <option value="food">Food</option>
                    <option value="News">News blogs</option>
                    <option value="LifeStore">Lifestyle</option>
                    <option value="Entertainment">Entertainment</option>
                    <option value="Culture">Culture</option>
                    <option value="Sports">Sports</option>

                    <!-- Add more categories as needed -->
                </select>

                <label for="content">Blog Content:</label>
                <textarea id="content" name="content" rows="8" required></textarea>

                <label for="date">Thubnail:</label>
                <input type="file" id="thumbnail" name="thumbnail" >

                <button type="submit">Create Blog</button>
            </form>


        </section>
    </body>
</html>

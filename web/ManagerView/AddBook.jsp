<%-- 
    Document   : AddBook
    Created on : 27-Nov-2023, 10:16:13 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            box-sizing: border-box;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            display: grid;
            gap: 15px;
        }

        label {
            font-size: 14px;
            color: #555;
        }

        input, select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
    <title>Book Entry Form</title>
</head>
<body>
    <div class="container">
        <h2>Book Entry Form</h2>
        <form action="" method="post" enctype="multipart/form-data">
            <label for="book_Name">Book Name:</label>
            <input type="text" id="book_Name" name="book_Name" required>

            <label for="publishing_year">Publishing Year:</label>
            <input type="date" id="publishing_year" name="publishing_year" placeholder="YYYY" required>

            <label for="pages">Pages:</label>
            <input type="number" id="pages" name="pages" required>

            <label for="book_img">Book Image (Upload):</label>
            <input type="file" id="book_img" name="book_img" accept="image/*" required>

            <label for="pdf">PDF (Upload):</label>
            <input type="file" id="pdf" name="pdf">

            <label for="genre_id">Genre ID:</label>
            <input type="number" id="genre_id" name="genre_id">

            <label for="author_id">Author ID:</label>
            <input type="number" id="author_id" name="author_id">

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>

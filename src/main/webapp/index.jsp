<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <title>Java Advanced Lesson 19 - Spring Multipart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
    <h2>Form registration</h2>
    <form method="post" action="/register" enctype="multipart/form-data">
        <div class="form-group">
            <label for="firstName">Name:</label>
            <input type="text" class="form-control" id="firstName" placeholder="Enter name" name="firstName">
        </div>
        <div class="form-group">
            <label for="lastName">Surname:</label>
            <input type="text" class="form-control" id="lastName" placeholder="Enter surname" name="lastName">
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <input type="text" class="form-control" id="age" placeholder="Enter age" name="age">
        </div>
        <div>
            <label for="photo">Photo:</label>
            <input type="file" id="photo" name="photo" required />
        </div><br>
        <button type="submit" class="btn btn-default">Save</button>
    </form>
</div>
</body>

</html>
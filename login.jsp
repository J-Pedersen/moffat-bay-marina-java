<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 
    CSD-460
    Team Indigo
    Moffat Bay Marina
    
    Team Members
        Sam Crandall
        Jacob Ives
        Jeff Pedersen
        Micah Smith 

    Contributors to this Code
        Jeff Pedersen (last update on 9-6-2023)
-->

<!-- Contains the page structure for the contents section of the Login Page -->
<html lang="en">
    <head>
    	<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.30">
        <title>Moffat Bay Marina</title>
        <link rel="stylesheet" href="styles/normalize.css"> <!-- contains all styles resets -->
        <link rel="stylesheet" href="styles/index.css"> <!-- contains all universal page styles -->
        <link rel="stylesheet" href="styles/header.css"> <!-- contains all header specific styles -->
        <link rel="stylesheet" href="styles/footer.css"> <!-- contains all footer specific styles -->
        <link rel="stylesheet" href="styles/nav.css"> <!-- contains all nav bar specific styles -->
        <link rel="stylesheet" href="styles/login.css"> <!-- contains all login page specific styles -->     
    </head>
    <body>
        <div class="wrapper"> <!-- page wrapper -->
            <jsp:include page="header.jsp" /> <!-- Include the header -->
            <jsp:include page="nav.jsp" /> <!-- Include the navigation menu -->
            <ul class="breadcrumb"> <!-- breadcrumb bar -->
                <li><a href="index.jsp" title="Home">Home</a></li> <!-- breadcrumb Index page -->
                <li><a href="#" title="Account Login">Account Login</a></li> <!-- breadcrumb Login No Link -->
            </ul> <!-- end breadcrumb bar -->
            <div class="content"> <!-- body content container -->
                <div class="login-container"> <!-- Container to help with positioning/styling -->
                    <h1>Login</h1>
                    <form action="/MoffatBay/login" method="post">
                        <div class="form-group"> <!-- Container to help with positioning/styling -->
                            <label for="username">Username/Email Address</label>
                            <input type="text" id="email" name="email" class="text-field" required>
                        </div> <!-- end form-group -->
                        <div class="form-group"> <!-- Container to help with positioning/styling -->
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" class="text-field" required>
                        </div> <!-- end form-group -->
                        <p>Don't have an account? <a href="registration.html" title="Register Here">Register Here</a></p>
                        <button type="submit" class="submit-button" title="Submit">Submit</button>
                    </form>
                </div> <!-- end login-container -->   
            </div> <!-- end content -->
            <jsp:include page="footer.jsp" /> <!-- Include the footer -->
        	<script type="text/javascript" src="./scripts/index.js"></script>
        </div> <!-- end wrapper -->      	  
    </body>
</html>
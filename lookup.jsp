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

<!-- Contains the page structure for the contents section of the Lookup Page -->
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
        <link rel="stylesheet" href="styles/lookup.css"> <!-- contains all lookup page specific styles -->      
    </head>
    <body>
        <div class="wrapper"> <!-- page wrapper -->
            <jsp:include page="header.jsp" /> <!-- Include the header -->
            <jsp:include page="nav.jsp" /> <!-- Include the navigation menu -->
            <ul class="breadcrumb"> <!-- breadcrumb bar -->
                <li><a href="index.jsp" title="Home">Home</a></li> <!-- breadcrumb Index page -->
                <li><a href="#" title="Reservation Look Up">Reservation Look Up</a></li> <!-- breadcrumb Login No Link -->
            </ul> <!-- end breadcrumb bar -->
			<div class="content"> <!-- body content container -->             
                <div class="marina-image-container"> <!-- Container to help with positioning/styling -->
                    <img src="images/marina.png" alt="Image">
                </div> <!-- end marina-image-container -->
                <div class="lookup-container"> <!-- Container to help with positioning/styling -->
                    <div class="form-container"> <!-- Container to help with positioning/styling -->
                        <form id="reservation-form" action="/MoffatBay/reservation-lookup" method="post">
                            <h1>Reservation Look Up</h1>
                            <div class="form-group-container"> <!-- Container to help with positioning/styling -->
                                <div class="form-group"> <!-- Container to help with positioning/styling -->
                                    <label for="reservationId">Reservation ID:</label>
                                    <input type="text" id="reservationId" class="text-field" name="reservation-id"><br>
                                </div> <!-- end form-group -->
                                <div class="form-group"> <!-- Container to help with positioning/styling -->
                                    <label for="email">Email:</label>
                                    <input type="text" id="email" class="text-field" name="email"><br>
                                </div> <!-- end form-group -->
                                <button type="submit" class="submit-button" id="submit-button" title="Submit">Submit</button>
                            </div> <!-- end form-group-container -->
                        </form>
                        <div class="details-container"> <!-- Container to help with positioning/styling -->
                            <div id="reservation-details"> <!-- Container to help with positioning/styling -->
                                <label id="reservationData">
                                    Slip Reservation Details<br/>
                                    Slip Number: ${sessionScope.slipNumber}<br/>
                                    Slip Length: ${sessionScope.slipLength} feet<br/>
                                    Your Boat's Length: ${sessionScope.boatLength}<br/>
                                    Your Boat's Name: ${sessionScope.boatName}<br/>
                                    Reservation Start Date: ${sessionScope.startDate}<br/>
                                </label>
                            </div> <!-- end reservation-details -->
                        </div> <!-- end details-container -->
                    </div> <!-- end form-container -->
                </div> <!-- end lookup-container -->
            </div> <!-- end content -->              
            <jsp:include page="footer.jsp" /> <!-- Include the footer -->
        	<script type="text/javascript" src="./scripts/index.js"></script>
        </div> <!-- end wrapper -->      	  
    </body>
</html>
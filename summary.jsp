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
        Micah Smith (last update on 9-10-2023)
-->

<!-- Contains the page structure for the contents section of the Summary Page -->
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
        <link rel="stylesheet" href="styles/summary.css"> <!-- contains all summary page specific styles -->       
    </head>
    <body>
        <div class="wrapper"> <!-- page wrapper -->
            <jsp:include page="header.jsp" /> <!-- Include the header -->
            <jsp:include page="nav.jsp" /> <!-- Include the navigation menu -->
            <ul class="breadcrumb"> <!-- breadcrumb bar -->
                <li><a href="index.jsp" title="Home">Home</a></li> <!-- breadcrumb Index page -->
                <li><a href="reservation.jsp" title="Slip Reservation">Slip Reservation</a></li> <!-- breadcrumb Reservation page -->
                <li><a href="#" title="Reservation Summary">Reservation Summary</a></li> <!-- breadcrumb Summary No Link -->
            </ul> <!-- end breadcrumb bar -->
            <div class="content"> <!-- body content container -->
                <div class="summary-container"> <!-- Container to help with positioning/styling -->
                    <h1>Reservation Summary</h1>
                    <p>Thank You For Your Business!</p>
                    <p>If you have any questions, concerns or comments, please contact us.</p>
                    <div class="details-container"> <!-- Container to help with positioning/styling -->
                        <div id="summary-details">
                        	<!--  Elements to insert reservation data from the session object via interpolation. -->
                        	<label id="reservationData">
                        		A slip is available!<br/>
                        		Slip Number: ${sessionScope.slipNumber}<br/>
                        		Slip Length: ${sessionScope.slipLength} feet<br/>
                        		Your Boat's Length: ${sessionScope.boatLength}<br/>
                        		Your Boat's Name: ${sessionScope.boatName}<br/>
                        		Reservation Start Date: ${sessionScope.startDate}<br/>
                        	</label>
                        </div> <!-- Container to display form data from Reservation page -->
                    </div> <!-- end details-container -->
                    <p>If this information is correct please click the Summit Button to confirm your reservation.</p>                   
                    <div class="form-group"> <!-- Container to help with positioning/styling -->
                        <form action="/MoffatBay/reserve" method="post">
                        <!-- href link to send the user back to the Reservations page when the Cancel button is clicked -->
                        	<a href="reservation.jsp" title="Slip Reservation"> 
                            <button type="button" class="cancel-button stack" id="cancel-button" title="Cancel">Cancel</button>
                            </a>
                            <!-- This button has no action yet!!! -->
                            <button type="submit" class="submit-button stack" id="submit-button" title="Submit">Submit</button>
                        </form>
                    </div> <!-- end button-group stack -->
                </div> <!-- end summary-container -->
            </div> <!-- end content -->
            <jsp:include page="footer.jsp" /> <!-- Include the footer -->
        	<script type="text/javascript" src="./scripts/index.js"></script>
            <!-- contains the code to populate the summary-details div from the Reservation page form -->
        	<script type="text/javascript" src="./scripts/summary.js"></script> 
        </div> <!-- end wrapper -->      	  
    </body>
</html>
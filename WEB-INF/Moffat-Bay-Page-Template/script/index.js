 
// Toggle function for opening and closing the menu
function toggleMenu() {
    var menu = document.querySelector('.nav-menu');
    var breadcrumb = document.querySelector('.breadcrumb');
    var smalloverlay = document.querySelector('.content-small');
    var loginwindow = document.querySelector('.login-container');
    var registrationwindow = document.querySelector('.registration-container');
    var reservationwindow = document.querySelector('.reservation-container');
    var aboutwindow = document.querySelector('.about-container');

    menu.classList.toggle('open');
    menu.classList.toggle('closed');
    // checks if breadcrumb exists before it chnages the z-index and opacity
    if (breadcrumb) {
        if (menu.classList.contains('open')) {
            breadcrumb.style.zIndex = -1;
            breadcrumb.style.opacity = 0;
        } 
        else {
            breadcrumb.style.zIndex = 99;
            breadcrumb.style.opacity = 1;
        }
    }

    // checks if smalloverlay exists before it changes the z-index
    if (smalloverlay) {
        if (menu.classList.contains('open')) {
            setTimeout(function () {
                smalloverlay.style.zIndex = 97;
            }, 10);
        } 
        else {
            setTimeout(function () {
                smalloverlay.style.zIndex = 99;
            }, 500);
        }
    }

    // checks if loginwindow exists before it changes the z-index
    if (loginwindow) {
        if (menu.classList.contains('open')) {
            setTimeout(function () {  
                loginwindow.style.zIndex = 97;
            }, 10);
        } 
        else {
            setTimeout(function () {
                loginwindow.style.zIndex = 98;
            }, 500);
        }
    }

    // checks if registrationwindow exists before it changes the z-index
    if (registrationwindow) {
        if (menu.classList.contains('open')) {
            setTimeout(function () {  
                registrationwindow.style.zIndex = 97;
            }, 10);
        } 
        else {
            setTimeout(function () {
                registrationwindow.style.zIndex = 98;
            }, 500);
        }
    }

    // checks if reservationwindow exists before it changes the z-index
    if (reservationwindow) {
        if (menu.classList.contains('open')) {
            setTimeout(function () {  
                reservationwindow.style.zIndex = 97;
            }, 10);
        } 
        else {
            setTimeout(function () {
                reservationwindow.style.zIndex = 98;
            }, 500);
        }
    }

    // checks if aboutwindow exists before it changes the z-index
    if (aboutwindow) {
        if (menu.classList.contains('open')) {
            setTimeout(function () {  
                aboutwindow.style.zIndex = 97;
            }, 10);
        } 
        else {
            setTimeout(function () {
                aboutwindow.style.zIndex = 98;
            }, 500);
        }
    }
}
// end of toggleMenu

// functions to swap header images on hover
// swap image function for the account icon in the page header
function changeAccountImage(imageName) {
    document.getElementById('account-image').src = "images/" + imageName;
}

// swap image function for the menu icon in the page header
function changeMenuImage(imageName) {
    document.getElementById('menu-image').src = "images/" + imageName;
}
// end functions to swap header images


// this will need to be reworked once we decide on a method which can be called. 
// it is to swap the display properties of the submit and waitlist 
// buttons based upon if the slip size is available or not.
// function toggleButtons() {
//     var slipAvailable = false; 

//     var submitButton = document.getElementById("submit-button");
//     var waitlistButton = document.getElementById("waitlist-button");

//     if (slipAvailable) {
//         // shows the Wait List button and hide the Submit button
//         submitButton.style.display = "none";
//         waitlistButton.style.display = "inline-block";
//     } else {
//         // show the Submit button and hide the Wait List button
//         submitButton.style.display = "inline-block"; 
//         waitlistButton.style.display = "none";
//     }
// };
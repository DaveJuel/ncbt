function setCountryCode(obj) {
    var element = document.getElementById("phone");
    var countryStringDetails = obj.value;
    var countrySplitDetails = countryStringDetails.split("|");
    element.value = countrySplitDetails[0];
}

//CHECK THE PHONE
function checkPhone() {
    var phone = document.getElementById("phone").value;
    if (phone != "") {
        document.getElementById("status").innerHTML = "Checking phone number...";
        var url = "../includes/interface.php?action=check_phone&phone=" + phone;
        callback(url, textShow);
    }
}

//CHECK USERNAME
function checkUsername() {
    var username = document.getElementById("username").value;
    if (username != "") {
        document.getElementById("status").innerHTML = "Checking...";
        var url = "../includes/interface.php?action=check_username&username=" + username;
        callback(url, textShow);
    }
}

//MESSAGE DISPLAY
function textShow(xmlhttp) {
    var result = xmlhttp.responseText
    document.getElementById("status").innerHTML = result;
}

function callback(url, textShow) {
    var xmlhttp;
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            textShow(xmlhttp);
        }
    };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
}

/**
 * This function is to get the list of site in a specified location
*/
function getSiteList(obj) {
    var location = obj.value;
    var url = "../dashboard/includes/interface.php?action=combo_location_sites&location=" + location;
    var xmlhttp;
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("site-combo").innerHTML = xmlhttp.responseText;
        }
    };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
}

/**
 * This function is to get the list of dates available for appointment
*/
function getSiteDateList(obj){
var siteName=obj.value;
var url = "../dashboard/includes/interface.php?action=combo_site_dates&site-name=" + siteName;
    var xmlhttp;
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("site-date-combo").innerHTML = xmlhttp.responseText;
        }
    };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
}
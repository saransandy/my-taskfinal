<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
    <meta name="google-signin-client_id" content="32808053626-i60ulo4dtmne97acvbmth579d2dffsi6.apps.googleusercontent.com">
    <link rel="stylesheet" href="https://s3.amazonaws.com/dynatable-docs-assets/css/jquery.dynatable.css">
    <script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script src="https://s3.amazonaws.com/dynatable-docs-assets/js/jquery.dynatable.js"></script>
    <style>
        body {
            width: 100vh;
            height: 100vh;
            background-image: url("http://c1.peakpx.com/wallpaper/126/205/202/shopping-cart-dolly-cart-shopping-wallpaper.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
.container {
    background-color: #f2f2f2;
    padding-top: 1%;
    padding-left: 1%;
    padding-right: 1%;
    padding-bottom: 1%;
}

.dynatable-record-count {
    display: block;
    padding: 15px 0;
}

#dynatable-per-page-my-final-table.dynatable-per-page-select {
    width: 8%;
}

.box {
    width: 100vh;
    padding: 40px;
    position: absolute;
    left: 20%;
    background: #191919;
    opacity: 0.97;
    top: 22%
}

.box h1 {
    color: white;
    text-transform: uppercase;
    font-weight: 500;
}

th a {
    color: #fff;
    text-decoration: none;
}

th a:hover {
    color: #fff;
    text-decoration: underline;
}

#my-final-table {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#my-final-table td,
#my-final-table th {
    border: 1px solid #ddd;
    padding: 8px;
}

#dynatable-search-my-final-table.dynatable-search {
    padding-top: 1%:
}

#my-final-table tr:nth-child(even) {
    background-color: #f2f2f2;
}

#my-final-table tr:hover {
    background-color: #ddd;
}

#my-final-table th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}

.w3-button {
    border: none;
    display: inline-block;
    padding: 8px 16px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    color: inherit;
    background-color: inherit;
    text-align: center;
    cursor: pointer;
    white-space: nowrap
}

.w3-black,
.w3-hover-black:hover {
    border-radius: 40%;
    color: #000!important;
    background-color: #fff!important;
    position: absolute;
    right: 10px;
    top: 20px;
}

html {
    position: relative;
    padding-top: 2%;
}

.w2-black,
.w2-hover-black:hover {
    border-radius: 40%;
    color: #000!important;
    background-color: #fff!important;
    position: absolute;
    left: 10px;
    top: 20px;
}

.w2-button {
    border: none;
    display: inline-block;
    padding: 8px 16px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    color: inherit;
    background-color: inherit;
    text-align: center;
    cursor: pointer;
    white-space: nowrap
}

.do-flip {
    -o-transform: rotateY(-180deg);
    -webkit-transform: rotateY(-180deg);
    -ms-transform: rotateY(-180deg);
    transform: rotateY(-180deg);
}

.box input[type="text"],
.box input[type="password"],
.box input[type="date"],
.box input[type="number"],
.box input[type="email"] {
    border: 0;
    display: block;
    text-align: center;
    background: none;
    margin: 20px auto;
    border: 2px solid #3498db;
    padding: 14px 10px;
    width: 200px;
    outline: none;
    color: white;
    border-radius: 30px;
}

#ch {
    text-decoration: none;
}

.box input[type="date"] {
    text-transform: uppercase;
    color: gray;
}

.box input[type="text"]:focus,
.box input[type="password"]:focus,
.box input[type="number"]:focus,
.box input[type="email"]:focus {
    /* width: 250px; */
    border-color: #2ecc71;
}

.box input[type="submit"],
.box input[type="button"],
#subbutton {
    border: 0;
    display: block;
    text-align: center;
    background: none;
    margin: 20px auto;
    border: 2px solid #2ecc71;
    padding: 14px 40px;
    outline: none;
    color: white;
    border-radius: 25px;
}

#subbtn {
    /* border:0; */
    /* display: block; */
    text-align: center;
    background: none;
    /* margin: 20px auto; */
    border: 2px solid #2ecc71;
    padding: 14px 40px;
    outline: none;
    color: white;
    border-radius: 25px;
}

.box input[type="submit"]:hover,
#subbutton:hover,
#subbtn:hover {
    background: #2ecc71;
}

.box a {

    padding-bottom: 10px;
    text-decoration: none;
}

input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

.box1 {
    width: 108vh;
    padding: 10px;
    position: absolute;
    left: 20%;
    background: #191919;
    opacity: 0.97;
    top: 3%;
    color: #fff;
}
    </style>
    <title>online Shopping Management - Home Page</title>
</head>

<body>
    <h1 id="user"> </h1>
    <div class="box1">
    <form:form action="check" modelAttribute="con">
              <form:button class="w3-button">product</form:button>
        </form:form>
         <form:form action="customer" modelAttribute="con">
              <form:button class="w3-button">customer</form:button>
        </form:form>
         <form:form action="invoice" modelAttribute="con">
              <form:button class="w3-button">invoice</form:button>
        </form:form>
    </div>

    <div id="customers" style="visibility: visible;">
        <div id="login1" class="box" style="visibility:visible;">
            <a id="loop" class="w2-button w2-black" onclick="flipflop3()">ADD</a>
            <a class="w3-button w3-black" href="index.html" onclick="signOut();">Sign out</a>
            <br><br>
            <div class="container">
                <table id="my-final-table">
                    <thead>
                        <tr>
                            <th>customer_id</th>
                            <th>customer_name</th>
                            <th>customer_emailid</th>
                            <th>customer_phno</th>
                        </tr>
                    </thead>

                    <tfoot>
                        <tr>
                            <th>customer_id</th>
                            <th>customer_name</th>
                            <th>customer_emailid</th>
                            <th>customer_phno</th>
                        </tr>
                    </tfoot>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
        <form id="form1" class="box" style="visibility: hidden;" class="box" onsubmit="validateRegistration(); return false;">
            <a class="w2-button w2-black" onclick="flipflop4()">Cancel</a>
            <a class="w3-button w3-black" href="index.html" onclick="signOut();">Sign out</a>
            <h1 style="text-align:center;">Adding a New Customer</h1>
            <input name="name" type="text" placeholder="Customer Name" maxlength="25" required>
            <input name="firstname" type="text" placeholder="Customer First Name" maxlength="25" required>
            <input name="lastname" type="text" placeholder="Customer Last Name" maxlength="25" required>
            <input name="phno" type="text" placeholder="Phone number" required pattern="[6-9]{1}[0-9]{9}" title="Enter a valid mobile number">
            <input name="dob" type="date" placeholder="date of birth" max="2010-12-31">
            <input name="email" type="email" placeholder="Email ID" required>
            <input name="fax" type="text" placeholder="Fax number" required pattern="[1-9]{1}[0-9]{6}" title="Enter a valid fax number">
            <input name="address" type="text" placeholder="Address" maxlength="60" required>
            <input name="city" type="text" placeholder="City" maxlength="25" required>
            <input name="state" type="text" placeholder="State" maxlength="25" required>
            <input name="pincode" type="text" placeholder="Pin Code" required pattern="[1-9]{1}[0-9]{5}" title="Enter a valid pin-code number">
            <input type="submit" value="Done">
        </form>

    </div>
    <script type="text/javascript">
    onafter();
    /* var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var response = xhr.responseText;
            if (response == "INVALID") {
                alert("login first");
                window.location.href = "index.html";
            } else {
                onafter();
            }
        }
    }
    xhr.open("GET", "Validate", true);
    xhr.send(); */

    function product() {
        window.location.href = "home.html";
    }

    function customer() {
        window.location.href = "customer.html";
    }

    function invoice() {
        window.location.href = "newinvoice.html";
    }

    function validateRegistration() {

        register();
    }

    function register() {
        var name = document.getElementsByName("name")[0].value;
        var firstname = document.getElementsByName("firstname")[0].value;
        var lastname = document.getElementsByName("lastname")[0].value;
        var phno = document.getElementsByName("phno")[0].value;
        var dob = document.getElementsByName("dob")[0].value;
        var email = document.getElementsByName("email")[0].value;
        var fax = document.getElementsByName("fax")[0].value;
        var address = document.getElementsByName("address")[0].value;
        var city = document.getElementsByName("city")[0].value;
        var state = document.getElementsByName("state")[0].value;
        var pincode = document.getElementsByName("pincode")[0].value;
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function (ev) {
            if (xhr.readyState == 4 && xhr.status == 200) {
            }
        }
        var url = "Addingcustomer?" + "name=" + name + "&firstname=" + firstname + "&lastname=" + lastname + "&phno=" + phno + "&dob=" + dob + "&email=" + email + "&fax=" + fax + "&address=" + address + "&city=" + city + "&state=" + state + "&pincode=" + pincode;
        console.log(url);
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send();
        flipflop2();
    }
    function flipflop() {
        document.getElementById('form').style.visibility = 'visible';
        document.getElementById('login').style.visibility = 'hidden';
    }
    function flipflop2() {
        document.getElementById('form').style.visibility = 'hidden';
        document.getElementById('login').style.visibility = 'visible';
    }
    function flipflop3() {
        document.getElementById('form1').style.visibility = 'visible';
        document.getElementById('login1').style.visibility = 'hidden';
    }
    function flipflop4() {
        document.getElementById('form1').style.visibility = 'hidden';
        document.getElementById('login1').style.visibility = 'visible';
    }
    function items() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var items = xhr.responseText;
                console.log("Items " + items);
                items = JSON.parse(items);
                console.log("name " + items[0]["item_name"]);
            }
        }
        xhr.open("GET", "ItemsRetrival", true);
        xhr.send();
    }
    function signOut() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                alert("LOGGED OUT");
                var auth2 = gapi.auth2.getAuthInstance();
                auth2.signOut().then(function () {
                    console.log('User signed out.');
                });
            }
        }
        xhr.open("GET", "Logout", true);
        xhr.send();

    }
    function onLoad() {
        gapi.load('auth2', function () {
            gapi.auth2.init();
        });
    }
    function onafter() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var items = xhr.responseText;
                console.log(items);
                items = JSON.parse(items);
                $('#my-final-table').dynatable({
                    dataset: {
                        records: items
                    }
                });
            }
        }
        xhr.open("POST", "ItemsRetrivalCustomers", true);
        xhr.send();
    }
    </script>
</body>

</html>
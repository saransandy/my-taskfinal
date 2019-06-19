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
    white-space: nowrap;
    width:230px;
    font-size:17px;
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
 <script>
          function readyList() {
        	  $("option").remove();
      	    $(function () {
      	        var xhr = new XMLHttpRequest();
      	        xhr.onreadystatechange = function () {
      	            if (xhr.readyState == 4 && xhr.status == 200) {
      	                var items = xhr.responseText;
      	                console.log(items);
						items = JSON.parse(items);
      	                var list = "";
      	                for (var i = 0; i < items.length; i++) {
          	                var item = items[i]["customer_name"];
      	                    list += '<option value="' + item + '"></option>'
      	                }
      	                document.getElementById("list").innerHTML += list;
      	            }
      	        }
      	        xhr.open("POST", "customersInvoice", true);
      	        xhr.send();

      	    });
      	}          
          </script>
    <h1 id="user"> </h1>
    <div class="box1">
    		<button class="w3-button" onclick="product()">product</button> 
              <button class="w3-button" onclick="customer()">customer</button>
              <button class="w3-button" onclick="invoice()">invoice</button>
    </div>

    <div id="customers" style="visibility: visible;">
        <div id="login1" class="box" style="visibility:visible;">
            <a id="loop" class="w2-button w2-black" onclick="flipflop()">ADD</a>
            <a class="w2-button w2-black" onclick="flipflop3()" style="left:10%">update</a>
            <a class="w2-button w2-black" onclick="flipflop4()"  style="left:20%">delete</a>
           <a class="w3-button w3-black" style="width: 70px;" onclick="signOut()">Sign out</a>
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
        <form id="form" class="box" style="visibility: hidden;" class="box" onsubmit="validateRegistration(); return false;">
            <a class="w2-button w2-black" onclick="flipflop2()">Cancel</a>
            <a class="w2-button w2-black" onclick="flipflop3()" style="left:12%">update</a>
            <a class="w2-button w2-black" onclick="flipflop4()" style="left:22%">delete</a>
            <a class="w3-button w3-black" style="width: 70px;" onclick="signOut()">Sign out</a>
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
		<form id="form1" class="box" style="visibility: hidden;" class="box" onsubmit="update(); return false;">
            <a class="w2-button w2-black" onclick="flipflop()">ADD</a>
           <a class="w2-button w2-black" onclick="flipflop2()" style="left:10%">cancel</a>
            <a class="w2-button w2-black" onclick="flipflop4()"  style="left:20%">delete</a>   
            <a class="w3-button w3-black" style="width: 70px;" onclick="signOut()">Sign out</a>
            <h1 style="text-align:center;">Update Customer</h1>
            <input name="name" type="text" list="datalist" placeholder="Customer Name" onclick="readyList()" onchange="autofill1()" maxlength="25" required>
            <datalist id="datalist">		
			<div id="list"></div>
           </datalist>
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
            <input type="submit" value="update">
        </form>
        <form id="form2" class="box" style="visibility: hidden;" class="box" onsubmit="delete1(); return false;">
            <a class="w2-button w2-black" onclick="flipflop()">ADD</a>
            <a class="w2-button w2-black" onclick="flipflop3()" style="left:10%">update</a>
            <a class="w2-button w2-black" onclick="flipflop2()"  style="left:20%">cancel</a>
            <a class="w3-button w3-black" style="width: 70px;" onclick="signOut()">Sign out</a>
            <h1 style="text-align:center;">Delete a Customer</h1>
            <input name="name" type="text" list="datalist" placeholder="Customer Name" onclick="readyList()" onchange="autofill()" maxlength="25" required>
            <datalist id="datalist">		
			<div id="list"></div>
           </datalist>
            <input name="firstname" type="text" placeholder="Customer First Name" maxlength="25" readonly>
            <input name="lastname" type="text" placeholder="Customer Last Name" maxlength="25" readonly>
            <input name="phno" type="text" placeholder="Phone number" required pattern="[6-9]{1}[0-9]{9}" title="Enter a valid mobile number" readonly>
            <input name="dob" type="date" placeholder="date of birth" max="2010-12-31" readonly>
            <input name="email" type="email" placeholder="Email ID" readonly>
            <input name="fax" type="text" placeholder="Fax number" required pattern="[1-9]{1}[0-9]{6}" title="Enter a valid fax number" readonly>
            <input name="address" type="text" placeholder="Address" maxlength="60" readonly>
            <input name="city" type="text" placeholder="City" maxlength="25" readonly>
            <input name="state" type="text" placeholder="State" maxlength="25" readonly>
            <input name="pincode" type="text" placeholder="Pin Code" required pattern="[1-9]{1}[0-9]{5}" title="Enter a valid pin-code number" readonly>
            <input type="submit" value="Delete">
        </form>
    </div>
    <script type="text/javascript">
    onafter();
    function autofill(){
		
		var deleteid = 2;
		var customername = document.getElementsByName("name")[deleteid].value;
	    var xhr = new XMLHttpRequest();
	    var firstname = "";
	    var lastname = "";
	    var phno = "";
	    var dob = "";
	    var email = "";
	    var fax ="";
	    var address ="";
	    var city = "";
	    var state = "";
	    var pincode = "";
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4 && xhr.status == 200){
				var response = xhr.responseText;
				console.log(response);
				response = JSON.parse(response);
				firstname = response[0]["customer_firstname"];
			    lastname = response[0]["customer_lastname"];
			    phno = response[0]["customer_phno"];
			    dob = response[0]["customer_dob"];
			    email = response[0]["customer_emailid"];
			    fax = response[0]["customer_fax"];
			    address = response[0]["customer_address"];
			    city = response[0]["customer_city"];
			    state = response[0]["customer_state"];
			    pincode = response[0]["customer_pin"];
				document.getElementsByName("firstname")[deleteid].value = firstname;
				document.getElementsByName("lastname")[deleteid].value = lastname;
				document.getElementsByName("phno")[deleteid].value = phno;
				document.getElementsByName("dob")[deleteid].value = dob;
				document.getElementsByName("email")[deleteid].value = email;
				document.getElementsByName("fax")[deleteid].value = fax;
				document.getElementsByName("address")[deleteid].value = address;
				document.getElementsByName("city")[deleteid].value = city;
				document.getElementsByName("state")[deleteid].value = state;
				document.getElementsByName("pincode")[deleteid].value = pincode;
					
			}
		}
		var url = 'Deletecustomer?customername=' + customername;  
		xhr.open("POST",url,true);
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhr.send(); 
	}
function autofill1(){
		
		var deleteid = 1;
		var customername = document.getElementsByName("name")[deleteid].value;
	    var xhr = new XMLHttpRequest();
	    var firstname = "";
	    var lastname = "";
	    var phno = "";
	    var dob = "";
	    var email = "";
	    var fax ="";
	    var address ="";
	    var city = "";
	    var state = "";
	    var pincode = "";
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4 && xhr.status == 200){
				var response = xhr.responseText;
				console.log(response);
				response = JSON.parse(response);
				firstname = response[0]["customer_firstname"];
			    lastname = response[0]["customer_lastname"];
			    phno = response[0]["customer_phno"];
			    dob = response[0]["customer_dob"];
			    email = response[0]["customer_emailid"];
			    fax = response[0]["customer_fax"];
			    address = response[0]["customer_address"];
			    city = response[0]["customer_city"];
			    state = response[0]["customer_state"];
			    pincode = response[0]["customer_pin"];
				document.getElementsByName("firstname")[deleteid].value = firstname;
				document.getElementsByName("lastname")[deleteid].value = lastname;
				document.getElementsByName("phno")[deleteid].value = phno;
				document.getElementsByName("dob")[deleteid].value = dob;
				document.getElementsByName("email")[deleteid].value = email;
				document.getElementsByName("fax")[deleteid].value = fax;
				document.getElementsByName("address")[deleteid].value = address;
				document.getElementsByName("city")[deleteid].value = city;
				document.getElementsByName("state")[deleteid].value = state;
				document.getElementsByName("pincode")[deleteid].value = pincode;
					
			}
		}
		var url = 'Deletecustomer?customername=' + customername;  
		xhr.open("POST",url,true);
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhr.send(); 
	}
	function update(){
		var name = document.getElementsByName("name")[1].value;
        var firstname = document.getElementsByName("firstname")[1].value;
        var lastname = document.getElementsByName("lastname")[1].value;
        var phno = document.getElementsByName("phno")[1].value;
        var dob = document.getElementsByName("dob")[1].value;
        var email = document.getElementsByName("email")[1].value;
        var fax = document.getElementsByName("fax")[1].value;
        var address = document.getElementsByName("address")[1].value;
        var city = document.getElementsByName("city")[1].value;
        var state = document.getElementsByName("state")[1].value;
        var pincode = document.getElementsByName("pincode")[1].value;
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function (ev) {
            if (xhr.readyState == 4 && xhr.status == 200) {
            }
        }
        var url = "updatecustomer?" + "name=" + name + "&firstname=" + firstname + "&lastname=" + lastname + "&phno=" + phno + "&dob=" + dob + "&email=" + email + "&fax=" + fax + "&address=" + address + "&city=" + city + "&state=" + state + "&pincode=" + pincode;
        console.log(url);
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send();
        flipflop2();
	}
	function delete1(){
		var no=0;
        var item = document.getElementsByName("name")[2].value;
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if(xhr.readyState==4 && xhr.status==200){
            	var item343=xhr.responeText;
            	console.log(item343);
            }
        }
        var url ="&customername="+item;
        console.log(url);
        url="deletecustomers?"+url;
        xhr.open("POST",url,true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send();
        flipflop2();
	}
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
	    window.location.href = "check";
	}
	function customer() {
	    window.location.href = "customer";
	}
	function invoice() {
	    window.location.href = "invoice";
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
            	window.location.href="customer";
            }
        }
        var url = "Addingcustomer?" + "name=" + name + "&firstname=" + firstname + "&lastname=" + lastname + "&phno=" + phno + "&dob=" + dob + "&email=" + email + "&fax=" + fax + "&address=" + address + "&city=" + city + "&state=" + state + "&pincode=" + pincode;
        console.log(url);
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send();
        flipflop2();
    }
    function flipflop(){
    	document.getElementById('form').style.visibility = 'visible';
    	document.getElementById('login1').style.visibility = 'hidden';
    	document.getElementById('form1').style.visibility = 'hidden';
    	document.getElementById('form2').style.visibility = 'hidden';

    }
    function flipflop2(){
    	document.getElementById('form').style.visibility = 'hidden';
    	document.getElementById('login1').style.visibility = 'visible';
    	document.getElementById('form1').style.visibility = 'hidden';
    	document.getElementById('form2').style.visibility = 'hidden';
    	document.getElementById('form').reset();
    }
    function flipflop3(){
    	document.getElementById('form1').style.visibility = 'visible';
    	document.getElementById('form').style.visibility = 'hidden';
    	document.getElementById('login1').style.visibility = 'hidden';
    	document.getElementById('form2').style.visibility = 'hidden';

    }
    function flipflop4(){
    	document.getElementById('form2').style.visibility = 'visible';
    	document.getElementById('form').style.visibility = 'hidden';
    	document.getElementById('login1').style.visibility = 'hidden';
    	document.getElementById('form1').style.visibility = 'hidden';

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
    function others(){
   	 window.location.href='index.html';
   }
     function signOut() {
       var auth2 = gapi.auth2.getAuthInstance();
       auth2.signOut().then(function () {
         console.log('User signed out.');
       });
      others();
     }
       function onLoad() {
           gapi.load('auth2', function() {
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
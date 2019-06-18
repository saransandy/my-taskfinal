<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
    <style type="text/css">
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
.dynatable-pagination-links span, .dynatable-pagination-links li{
dispaly:inline-block;
}
.dynatable-pagination-links{
float:right;
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
    <script>
          function readyList() {
      	    $(function () {
      	        var xhr = new XMLHttpRequest();
      	        xhr.onreadystatechange = function () {
      	            if (xhr.readyState == 4 && xhr.status == 200) {
      	                var items = xhr.responseText;
						items = JSON.parse(items);
      	                var list = "";
      	                for (var i = 0; i < items.length; i++) {
          	                var item = items[i]["itemname"];
      	                    list += '<option value="' + item + '"></option>'
      	                }
      	                document.getElementById("list").innerHTML += list;
      	            }
      	        }
      	        xhr.open("POST", "ItemsInvoice", true);
      	        xhr.send();

      	    });
      	}          
          </script>

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

    <div id="products" style="visibility:visible">
        <div id="login" class="box" style="visibility:visible;">
            <a id="loop" class="w2-button w2-black" onclick="flipflop()">ADD</a>
            <a class="w2-button w2-black" onclick="flipflop3()" style="left:10%">update</a>
            <a class="w2-button w2-black" onclick="flipflop4()" style="left:20%">delete</a>
            <a class="w3-button w3-black" href="index.html" onclick="signOut();">Sign out</a>
            <br><br>
            <div class="container">
                <table id="my-final-table">
                    <thead>
                        <tr>
                            <th>itemid</th>
                            <th>itemname</th>
                            <th>itemprice</th>
                            <th>itemdisc</th>
                            <th>itemkey</th>
                            <th>itemuom</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>itemid</th>
                            <th>itemname</th>
                            <th>itemprice</th>
                            <th>itemdisc</th>
                            <th>itemkey</th>
                            <th>itemuom</th>
                        </tr>
                    </tfoot>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
        
       
                            
        
        <form id="form" class="box" style="visibility: hidden;" class="box" onsubmit="validateRegistration(); return false;">
            <a class="w2-button w2-black" onclick="flipflop2()">Cancel</a>
            <a class="w2-button w2-black" onclick="flipflop3()" style="left:10%">update</a>
            <a class="w2-button w2-black" onclick="flipflop4()"  style="left:20%">delete</a>
            <a class="w3-button w3-black" href="index.html" onclick="signOut();">Sign out</a>
            <h1 style="text-align:center;">Adding a New Product</h1>
            <input name="item" type="text" placeholder="Item Name" maxlength="25" required>
            <input name="price" type="text" placeholder="Item price" required pattern="[1-9]{1}[0-9]{1,5}" title="Enter a valid mobile number">
            <input name="desc" type="text" placeholder="Item Description" maxlength="100" required>
            <input name="key" type="text" placeholder="Item Key" maxlength="25" required>
            <input name="uom" type="text" placeholder="Item Uom" maxlength="25" required>
            <input type="submit" value="Done">
        </form>
         <form id="form1" class="box" style="visibility: hidden;" class="box" onsubmit="update(); return false;">
            <a class="w2-button w2-black" onclick="flipflop()">ADD</a>
            <a class="w2-button w2-black" onclick="flipflop2()" style="left:10%">cancel</a>
            <a class="w2-button w2-black" onclick="flipflop4()"  style="left:20%">delete</a>
            <a class="w3-button w3-black" href="index.html" onclick="signOut();">Sign out</a>
            <h1 style="text-align:center;">update a Product</h1>
            
            <input name="item" type="text" list="datalist" placeholder="Item Name" maxlength="25" onclick="readyList()" onchange="autofill1()" required>
            <datalist id="datalist">		
			<div id="list"></div>
           </datalist>
            <input name="price" type="text" placeholder="Item price" required pattern="[1-9]{1}[0-9]{1,5}" title="Enter a valid mobile number">
            <input name="desc" type="text" placeholder="Item Description" maxlength="100" required>
            <input name="key" type="text" placeholder="Item Key" maxlength="25" required>
            <input name="uom" type="text" placeholder="Item Uom" maxlength="25" required>
            <input type="submit" value="update">
        </form>
        <form id="form2" class="box" style="visibility: hidden;" class="box" onsubmit="delete1(); return false;">
            <a class="w2-button w2-black" onclick="flipflop()">ADD</a>
            <a class="w2-button w2-black" onclick="flipflop3()" style="left:10%">update</a>
            <a class="w2-button w2-black" onclick="flipflop2()"  style="left:20%">cancel</a>
            <a class="w3-button w3-black" href="index.html" onclick="signOut();">Sign out</a>
            <h1 style="text-align:center;">Delete a Product</h1>
            <input name="item" type="text" list="datalist" placeholder="Item Name" maxlength="25" onclick="readyList()" onchange="autofill()" required>
            <datalist id="datalist">		
			<div id="list"></div>
           </datalist>
            <input name="price" type="text" placeholder="Item price" pattern="[1-9]{1}[0-9]{1,5}" title="Enter a valid mobile number"readonly>
            <input  name="desc" type="text" placeholder="Item Description" maxlength="100" readonly>
            <input  name="key" type="text" placeholder="Item Key" maxlength="25" readonly>
            <input name="uom" type="text" placeholder="Item Uom" maxlength="25" readonly>
            <input type="submit" value="Delete">
        </form>
    </div>
    

    
    <script type="text/javascript">
		function update(){
			var no=0;
	        var item = document.getElementsByName("item")[1].value;
	        var price = document.getElementsByName("price")[1].value;
	        var desc  = document.getElementsByName("desc")[1].value;
	        var key  = document.getElementsByName("key")[1].value;
	        var uom  = document.getElementsByName("uom")[1].value;
	        var xhr = new XMLHttpRequest();
	        xhr.onreadystatechange = function () {
	            if(xhr.readyState==4 && xhr.status==200){
	            	var item343=xhr.responeText;
	            	console.log(item343);
	            }
	        }
	        var url ="no="+no+"&itemname="+item+"&price="+price+"&desc="+desc+"&key="+key+"&uom="+uom;
	        console.log(url);
	        url="updateitems?"+url;
	        xhr.open("POST",url,true);
	        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	        xhr.send();
	        flipflop2();
		}
		function delete1(){
			var no=0;
	        var item = document.getElementsByName("item")[2].value;
	        var xhr = new XMLHttpRequest();
	        xhr.onreadystatechange = function () {
	            if(xhr.readyState==4 && xhr.status==200){
	            	var item343=xhr.responeText;
	            	console.log(item343);
	            }
	        }
	        var url ="&itemname="+item;
	        console.log(url);
	        url="deleteitems?"+url;
	        xhr.open("POST",url,true);
	        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	        xhr.send();
	        flipflop2();
		}
    	function autofill(){
    	    		
    		var deleteid = 2;
    		var itemname = document.getElementsByName("item")[deleteid].value;
    	    var xhr = new XMLHttpRequest();
    	    var price = "";
    	    var desc = "";
    	    var key = "";
    	    var uom = "";
    		xhr.onreadystatechange = function(){
    			if(xhr.readyState==4 && xhr.status == 200){
    				var response = xhr.responseText;
    				console.log(response);
    				response = JSON.parse(response);
    				price = response[0]["itemprice"];
    			    desc = response[0]["itemdisc"];
    				key = response[0]["itemkey"];
    				uom = response[0]["itemuom"];
					document.getElementsByName("price")[deleteid].value = price;
					document.getElementsByName("desc")[deleteid].value = desc;
					document.getElementsByName("key")[deleteid].value = key;
					document.getElementsByName("uom")[deleteid].value = uom;
    					
    			}
    		}
    		var url = 'DeleteItem?itemname=' + itemname;  
    		xhr.open("POST",url,true);
    		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    		xhr.send(); 
    	}
    	function autofill1(){
    		var deleteid = 1;
    		var itemname = document.getElementsByName("item")[deleteid].value;
    	    var xhr = new XMLHttpRequest();
    	    var price = "";
    	    var desc = "";
    	    var key = "";
    	    var uom = "";
    		xhr.onreadystatechange = function(){
    			if(xhr.readyState==4 && xhr.status == 200){
    				var response = xhr.responseText;
    				console.log(response);
    				response = JSON.parse(response);
    				price = response[0]["itemprice"];
    			    desc = response[0]["itemdisc"];
    				key = response[0]["itemkey"];
    				uom = response[0]["itemuom"];
					document.getElementsByName("price")[deleteid].value = price;
					document.getElementsByName("desc")[deleteid].value = desc;
					document.getElementsByName("key")[deleteid].value = key;
					document.getElementsByName("uom")[deleteid].value = uom;
    					
    			}
    		}
    		var url = 'DeleteItem?itemname=' + itemname;  
    		xhr.open("POST",url,true);
    		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    		xhr.send(); 
    	}
    </script>
    
    <script type="text/javascript">
    onafter();
	/* var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 && xhr.status == 200){
			var response = xhr.responseText;
			if(response=="INVALID"){
				alert("login first");
				window.location.href = "welcome";
			}
			else{
				onafter();
				}
		}
	}
	xhr.open("POST","Validate",true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr.send(); */
	function product()
	{
		window.location.href = "home.html";
		}
	function customer()
	{
		window.location.href = "customer.html";}
	function invoice()
	{
		window.location.href = "newinvoice.html";
		}

    function validateRegistration() {
                register();
    }
    function register() {
    	var no=0;
        var item = document.getElementsByName("item")[0].value;
        var price = document.getElementsByName("price")[0].value;
        var desc  = document.getElementsByName("desc")[0].value;
        var key  = document.getElementsByName("key")[0].value;
        var uom  = document.getElementsByName("uom")[0].value;
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if(xhr.readyState==4 && xhr.status==200){
            	var item343=xhr.responeText;
            	console.log(item343);
            }
        }
        var url ="no="+no+"&itemname="+item+"&price="+price+"&desc="+desc+"&key="+key+"&uom="+uom;
        console.log(url);
        url="additems?"+url;
        xhr.open("POST",url,true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send();
        flipflop2();
        
    }      
    function flipflop(){
    	document.getElementById('form').style.visibility = 'visible';
    	document.getElementById('login').style.visibility = 'hidden';
    	document.getElementById('form1').style.visibility = 'hidden';
    	document.getElementById('form2').style.visibility = 'hidden';

    }
    function flipflop2(){
    	document.getElementById('form').style.visibility = 'hidden';
    	document.getElementById('login').style.visibility = 'visible';
    	document.getElementById('form1').style.visibility = 'hidden';
    	document.getElementById('form2').style.visibility = 'hidden';
    	document.getElementById('form').reset();
    }
    function flipflop3(){
    	document.getElementById('form1').style.visibility = 'visible';
    	document.getElementById('form').style.visibility = 'hidden';
    	document.getElementById('login').style.visibility = 'hidden';
    	document.getElementById('form2').style.visibility = 'hidden';

    }
    function flipflop4(){
    	document.getElementById('form2').style.visibility = 'visible';
    	document.getElementById('form').style.visibility = 'hidden';
    	document.getElementById('login').style.visibility = 'hidden';
    	document.getElementById('form1').style.visibility = 'hidden';

    }
    function onafter(){
    	var xhr = new XMLHttpRequest();
    	xhr.onreadystatechange = function(){
    		if(xhr.readyState==4 && xhr.status == 200){
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
    	xhr.open("POST","ItemsRetrival",true);
    	xhr.send();
    	}
      function signOut() {
    	  var xhr = new XMLHttpRequest();
    		xhr.onreadystatechange = function(){
    			if(xhr.readyState==4 && xhr.status == 200){
    				alert("LOGGED OUT");
    			}
    		}
    		xhr.open("GET","Logout",true);
    		xhr.send();
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
          console.log('User signed out.');
        });
      }
        function onLoad() {
            gapi.load('auth2', function() {
              gapi.auth2.init();
            });
      }
    </script>
</body>

</html>
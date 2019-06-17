<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head></head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" id="bootstrap-css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script src="https://s3.amazonaws.com/dynatable-docs-assets/js/jquery.dynatable.js"></script>
        <link rel="stylesheet" href="https://s3.amazonaws.com/dynatable-docs-assets/css/jquery.dynatable.css">
    <style type="text/css">
        .container1 {
            background-color: #f2f2f2;
            padding-top: 1%;
            padding-left: 1%;
            padding-right: 1%;
            padding-bottom: 1%;
        }

        datalist {
            display: none;
        }
        input::-webkit-calendar-picker-indicator {
            display: none;
        }
        
body{
width:100vh;
height:100vh;
background-image:url("http://c1.peakpx.com/wallpaper/126/205/202/shopping-cart-dolly-cart-shopping-wallpaper.jpg");
    background-size:cover;
    background-repeat: no-repeat;
  background-attachment: fixed;
}
.container{
background-color: #000;
padding-top:1%;
padding-left:1%;
padding-right:1%;
padding-bottom:1%;
width:900px;
position:absolute;
left:20%;
top:14%;
height:100vh;
opacity:0.8;
}
.container1{
background-color: #f2f2f2;
padding-top:1%;
padding-left:1%;
padding-right:1%;
padding-bottom:1%;
}
.dynatable-record-count {
  display: block;
  padding: 15px 0;
}
#dynatable-per-page-my-final-table.dynatable-per-page-select{
width:8%;
}
.box{
    width: 108vh;
    padding :40px;
    position: absolute;
    left:20%;
    background: #191919;
    opacity:0.97;
    top:22%
}
.box h1{
    color: white;
    text-transform: uppercase;
    font-weight: 500;
}
th a {
  color: #fff;text-decoration: none;
}
th a:hover {
  color: #fff;
  text-decoration: underline;
}

#my-final-table{
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#my-final-table td, #my-final-table th {
  border: 1px solid #ddd;
  padding: 8px;
}
#dynatable-search-my-final-table.dynatable-search{
padding-top:1%:
}

#my-final-table tr:nth-child(even){background-color: #f2f2f2;}

#my-final-table tr:hover {background-color: #ddd;}

#my-final-table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
.w3-button{border:none;display:inline-block;padding:8px 16px;vertical-align:middle;overflow:hidden;text-decoration:none;color:inherit;background-color:inherit;text-align:center;cursor:pointer;white-space:nowrap}
.w3-black,.w3-hover-black:hover{border-radius:40%;color:#000!important;background-color:#fff!important;position: absolute;
right: 10px;
top:20px;}
html{    position: relative;
    padding-top: 2%;
}
.w2-black,.w2-hover-black:hover{border-radius:40%;color:#000!important;background-color:#fff!important;position: absolute;
left: 10px;
top:20px;}
.w2-button{border:none;display:inline-block;padding:8px 16px;vertical-align:middle;overflow:hidden;text-decoration:none;color:inherit;background-color:inherit;text-align:center;cursor:pointer;white-space:nowrap}
.do-flip {
  -o-transform: rotateY(-180deg);
  -webkit-transform: rotateY(-180deg);
  -ms-transform: rotateY(-180deg);
  transform: rotateY(-180deg);
}
.box input[type="text"], .box input[type="password"], .box input[type="date"], .box input[type="number"], .box input[type="email"]{
    border:0;
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

.box input[type="date"]{
    text-transform: uppercase;
    color: gray;
}

.box input[type="text"]:focus, .box input[type="password"]:focus, .box input[type="number"]:focus, .box input[type="email"]:focus{
    /* width: 250px; */
    border-color: #2ecc71;
}

.box input[type="submit"],.box input[type="button"], #subbutton{
    border:0;
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

#subbtn{
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

.box input[type="submit"]:hover , #subbutton:hover, #subbtn:hover{
    background: #2ecc71;
}

.box a{
    
    padding-bottom: 10px; 
    text-decoration: none;
}

input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
  -webkit-appearance: none; 
  margin: 0; 
}
.box1{
    width: 108vh;
    position: absolute;
    left:20%;
    background: #191919;
    opacity:0.97;
    top:3%;
    color:#fff;
}
datalist {
	display: none;
}
/* specifically hide the arrow on focus */
input::-webkit-calendar-picker-indicator {
	display: none;
}
        
    </style>
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

    <div id="login1" class="box" style="visibility:visible;">
        <a id="loop" class="w2-button w2-black" onclick="flipflop3()">ADD</a>
        <a class="w3-button w3-black" href="index.html" onclick="signOut();">Sign out</a>
        <br><br>
        <div class="container1">
            <table id="my-final-table">
                <thead>
                    <tr>
                        <th>invoice_id</th>
                        <th>cust_id</th>
                        <th>grand_total</th>
                    </tr>
                </thead>

                <tfoot>
                    <tr>
                        <th>invoice_id</th>
                        <th>cust_id</th>
                        <th>grand_total</th>
                    </tr>
                </tfoot>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
    <div id="form2" class="container" style="height:100vh;visibility:hidden;top:22%;width: 108vh;">
        <div class="row clearfix">
            <div class="col-md-6">
                <a class="w3-button w3-black" href="index.html" onclick="signOut();" style="left: 80%;">Sign out</a>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12" style="top:70px">
                <table class="table table-bordered table-hover" id="tab_logic">
                    <thead>
                        <tr>
                            <th class="text-center"> # </th>
                            <th class="text-center"> Product </th>
                            <th class="text-center"> Qty </th>
                            <th class="text-center"> Price </th>
                            <th class="text-center"> Total </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr id='addr0'>
                            <td>1</td>
                            <td><input type="text" list="datalist" name='itemname' placeholder='Enter Product Name' class="form-control" onchange="itemprice()" required></input>
                            </td>

                            <datalist id="datalist"> 		
			<div id="list"></div>
            <td><input type="number" name='itemquantity' placeholder='Enter Qty' class="form-control qty" step="0" min="0" required></input></td>
            <td><input id="inputTwo" type="number" name='itemprice' placeholder='Enter Unit Price' class="form-control price" step="0.00" min="0" readonly></input></td>
            <td><input type="number" name='total' placeholder='0.00' class="form-control total" readonly/></td>
          </tr>
          <tr id='addr1'></tr>
        </tbody>
      </table>
          <script>
          function readyList() {
      	    $(function () {
      	        var xhr = new XMLHttpRequest();
      	        xhr.onreadystatechange = function () {
      	            if (xhr.readyState == 4 && xhr.status == 200) {
      	                var items = xhr.responseText;
      	                var item = items.split(",");
      	                var list = "";
      	                for (var i = 0; i < item.length; i++) {
      	                    list += '<option value="' + item[i] + '"></option>'
      	                }
      	                document.getElementById("list").innerHTML += list;
      	            }
      	        }
      	        xhr.open("GET", "ItemsInvoice", true);
      	        xhr.send();

      	    });
      	}
          		readyList();
          </script>
    </div>
  </div>
  <div class="row clearfix">
    <div class="col-md-12" style="top:70px">
      <button id="add_row" class="btn btn-default pull-left">Add Row</button>
      <button id='delete_row' class="pull-right btn btn-default">Delete Row</button>
    </div>
  </div>
  <div class="row clearfix" style="margin-top:20px;">
    <div class="pull-right col-md-4" style="top:70px">
      <table class="table table-bordered table-hover" id="tab_logic_total">
        <tbody>
          <tr>
            <th class="text-center">Sub Total</th>
            <td class="text-center"><input type="number" name='sub_total' placeholder='0.00' class="form-control" id="sub_total" readonly/></td>
          </tr>
          <tr>
            <th class="text-center">Tax</th>
            <td class="text-center"><div class="input-group mb-2 mb-sm-0">
                <input type="number" class="form-control" id="tax" placeholder="0">
                <div class="input-group-addon">%</div>
              </div></td>
          </tr>
          <tr>
            <th class="text-center">Tax Amount</th>
            <td class="text-center"><input type="number" name='tax_amount' id="tax_amount" placeholder='0.00' class="form-control" readonly/></td>
          </tr>
          <tr>
            <th class="text-center">Grand Total</th>
            <td class="text-center"><input type="number" name='total_amount' id="total_amount" placeholder='0.00' class="form-control" readonly/></td>
          </tr>
          <tr>
          <button style="top:250;position:absolute;" class="btn btn-default" onclick="invoiceData()"> submit</button>
            </tr>
        </tbody>
      </table>
    </div>
  </div>
  </div>
  <script type="text/javascript">
  onafter();
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
	    xhr.open("POST", "ItemsRetrivalInvoice", true);
	    xhr.send();
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
	function flipflop() {
	    document.getElementById('form').style.visibility = 'visible';
	    document.getElementById('login').style.visibility = 'hidden';
	}
	function flipflop2() {
	    document.getElementById('form').style.visibility = 'hidden';
	    document.getElementById('login').style.visibility = 'visible';
	}
	function flipflop3() {
	    document.getElementById('login1').style.visibility = 'hidden';
	    document.getElementById('form2').style.visibility = 'visible';
	}
	function flipflop4() {
	    document.getElementById('form1').style.visibility = 'hidden';
	    document.getElementById('login1').style.visibility = 'visible';
	}
	function product() {
	    window.location.href = "home.html";
	}
	function customer() {
	    window.location.href = "customer.html";
	}
	function invoice() {
	    window.location.href = "newinvoice.html";
	}
	function itemprice() {
	    var xhr = new XMLHttpRequest();
	    var url = 'Itempriceget?';
	    var namesObj = document.getElementsByName("itemname");
	    var itemnames = "";
	    for (var i = 0; i < namesObj.length; i++) {
	        if (i != 0) {
	            itemnames += ",";
	        }
	        itemnames += namesObj[i].value;
	    }
	    xhr.onreadystatechange = function () {
	        if (xhr.readyState == 4 && xhr.status == 200) {
	            response = xhr.responseText;
	            var price = response.split(",");
	            var itemprice = document.getElementsByName("itemprice")
	            for (var i = 0; i < price.length; i++) {
	                itemprice[i].value = price[i];
	            }
	        }
	    }
	    url += "itemname=" + itemnames;
	    xhr.open("GET", url, true);
	    xhr.send();
	}
	function invoiceData() {
	    const namesObj = document.getElementsByName("itemname");
	    const pricesObj = document.getElementsByName("total");
	    const quantitiesObj = document.getElementsByName("itemquantity");
	    var itemnames = "";
	    var itemprices = "";
	    var itemquantities = "";
	    for (var i = 0; i < namesObj.length; i++) {
	        if (i != 0) {
	            itemnames += ",";
	        }
	        itemnames += namesObj[i].value;
	    }
	    for (var i = 0; i < pricesObj.length; i++) {
	        if (i != 0) {
	            itemprices += ",";
	        }
	        itemprices += pricesObj[i].value;
	    }
	    for (var i = 0; i < quantitiesObj.length; i++) {
	        if (i != 0) {
	            itemquantities += ",";
	        }
	        itemquantities += quantitiesObj[i].value;
	    }
	    var xhr = new XMLHttpRequest();
	    var url = 'InvoiceInsertion?';
	    xhr.onreadystatechange = new function () {
	        if (xhr.readyState == 4 && xhr.status == 200) {
	            var response = xhr.responseText;
	            alert("Inserted");
	        }
	    }
	    url += "itemnames=" + itemnames + "&itemprices=" + itemprices + "&itemquantities=" + itemquantities;
	    console.log("URL : " + url);
	    xhr.open("GET", url, true);
	    xhr.send();
	}
	$(document).ready(function () {
	    var i = 1;
	    $("#add_row").click(function () {
	        b = i - 1;
	        $('#addr' + i).html($('#addr' + b).html()).find('td:first-child').html(i + 1);
	        $('#tab_logic').append('<tr id="addr' + (i + 1) + '"></tr>');
	        i++;
	    });
	    $("#delete_row").click(function () {
	        if (i > 1) {
	            $("#addr" + (i - 1)).html('');
	            i--;
	        }
	        calc();
	    });

	    $('#tab_logic tbody').on('keyup change', function () {
	        calc();
	    });
	    $('#tax').on('keyup change', function () {
	        calc_total();
	    });
	});
	function calc() {
	    $('#tab_logic tbody tr').each(function (i, element) {
	        var html = $(this).html();
	        if (html != '') {
	            var qty = $(this).find('.qty').val();
	            var price = $(this).find('.price').val();
	            $(this).find('.total').val(qty * price);
	            calc_total();
	        }
	    });
	}
	function calc_total() {
	    total = 0;
	    $('.total').each(function () {
	        total += parseInt($(this).val());
	    });
	    $('#sub_total').val(total.toFixed(2));
	    tax_sum = total / 100 * $('#tax').val();
	    $('#tax_amount').val(tax_sum.toFixed(2));
	    $('#total_amount').val((tax_sum + total).toFixed(2));
	}
  </script>
    </body>
</html>
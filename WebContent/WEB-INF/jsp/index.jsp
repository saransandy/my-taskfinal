<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="32808053626-i60ulo4dtmne97acvbmth579d2dffsi6.apps.googleusercontent.com">
    <title>online Shopping Management - login Page</title>
    <style type="text/css">
        body {
            width: 100vh;
            height: 100vh;
            background-image: url("http://c1.peakpx.com/wallpaper/126/205/202/shopping-cart-dolly-cart-shopping-wallpaper.jpg");
            background-size: cover;
        }

        .box {
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: #191919;
            opacity: 0.97;
            text-align: center;
        }

        .box h1 {
            color: white;
            text-transform: uppercase;
            font-weight: 500;
        }

        .g-signin2 {}
    </style>
</head>

<body>
    <div id="login" class="box">
        <h1>Login</h1>
        <div class="g-signin2" data-onsuccess="onSignIn"></div>
        <form:form action="check" modelAttribute="con">
              <form:button id="next">Click here to continue</form:button>
        </form:form>
        
    </div>
     <script type="text/javascript">
        function onSignIn(googleUser) {
            var profile = googleUser.getBasicProfile();
            console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
            /* alert(profile.getId()) */
            console.log('Name: ' + profile.getName());
            console.log('Image URL: ' + profile.getImageUrl());
            console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
            var xhr = new XMLHttpRequest();
            var url = "Login?custid=" + profile.getId() + "&user=" + profile.getName();
            xhr.onreadystatechange = function() {
                if (xhr.status == 200 && xhr.readyState == 4) {
                    var reply = xhr.responseText;
                    console.log("reply test " + reply)
                    if (reply == "SUCCESS") {
                        window.location.href = 'home.html';
                    }
                }
            }

            xhr.open("POST", url, true);
            xhr.send();
        }
    </script>
</body>

</html>
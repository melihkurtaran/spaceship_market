<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="db.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Thanks!</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

/* Button used to open the chat form - fixed at the bottom of the page */
.open-button {
	background-color: #555;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	opacity: 0.8;
	position: fixed;
	bottom: 23px;
	right: 28px;
	width: 280px;
}

/* The popup chat - hidden by default */
.chat-popup {
	display: none;
	position: fixed;
	bottom: 0;
	right: 15px;
	border: 3px solid #f1f1f1;
	z-index: 9;
}

/* Add styles to the form container */
.form-container {
	max-width: 300px;
	padding: 10px;
	background-color: white;
}

/* Full-width textarea */
.form-container textarea {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	border: none;
	background: #f1f1f1;
	resize: none;
	min-height: 200px;
}

/* When the textarea gets focus, do something */
.form-container textarea:focus {
	background-color: #ddd;
	outline: none;
}

/* Set a style for the submit/send button */
.form-container .btn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	margin-bottom: 10px;
	opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
	background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
	opacity: 1;
}
</style>
<style>
body {
	text-align: center;
	font-weight: 100;
}

h1 {
	color: yellow;
	font-weight: 100;
	font-size: 40px;
	margin: 40px 0px 20px;
}

#clockdiv {
	font-family: sans-serif;
	color: #fff;
	display: inline-block;
	font-weight: 100;
	text-align: center;
	font-size: 30px;
}

#clockdiv>div {
	padding: 10px;
	border-radius: 3px;
	background: black;
	display: inline-block;
}

#clockdiv div>span {
	padding: 15px;
	border-radius: 3px;
	background: #bbb;
	display: inline-block;
}

smalltext {
	padding-top: 5px;
	font-size: 16px;
}
</style>
</head>
<%
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String fullName = firstName + " " + lastName;
	String mail = request.getParameter("mail");
	String name;
	String planet = request.getParameter("planet");
	/*Cookie cookie = new Cookie("public_name", name); 
	response.addCookie(cookie);
	cookie.setMaxAge( 60*60*24*20 ); //20 days
	response.addCookie( cookie );
	Cookie[] cookies = request.getCookies();*/
%>
<%
	dbHandler.Connect();
	dbHandler.Insert(firstName, lastName, mail, planet);
%>
<body
	background="https://wallpapermemory.com/uploads/748/cool-space-wallpaper-full-hd-398699.jpg"
	style="font-family: georgia, garamond, serif; font-size: 17px;">
	<div class="alert alert-success alert-dismissible">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<strong>Success!</strong> Registration is successful!
	</div>
	<h1>
		<img
			src="https://flaticons.net/gd/makefg.php?i=icons/Education/Spaceship-01.png&r=255&g=255&b=255"
			height="72" width="72"> <a href="homepage.html" id="spaceship">Spaceship
			Market</a>
	</h1>
	<h3>
		Thank you for registration! <b style="color: white;"><%=fullName%></b>
		Please visit us at our homepage <a href=homepage.html> Spaceship
			Market</a>
	</h3>
	<h5>
		We've sent the confirmation to your e-mail: <b style="color: white;"><%=mail%></b>
	</h5>
	Registration time:
	<p id="time" style="color: white"></p>
	<script>
		var d = new Date();
		document.getElementById("time").innerHTML = d;
	</script>
	<h1>Season Discount</h1>
	<div id="clockdiv">
		<div>
			<span class="days" id="day"></span>
			<div class="smalltext">Days</div>
		</div>
		<div>
			<span class="hours" id="hour"></span>
			<div class="smalltext">Hours</div>
		</div>
		<div>
			<span class="minutes" id="minute"></span>
			<div class="smalltext">Minutes</div>
		</div>
		<div>
			<span class="seconds" id="second"></span>
			<div class="smalltext">Seconds</div>
		</div>
	</div>

	<p id="demo"></p>

	<script>
		var deadline = new Date("may 31, 2019 15:37:25").getTime();

		var x = setInterval(function() {

			var now = new Date().getTime();
			var t = deadline - now;
			var days = Math.floor(t / (1000 * 60 * 60 * 24));
			var hours = Math.floor((t % (1000 * 60 * 60 * 24))
					/ (1000 * 60 * 60));
			var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
			var seconds = Math.floor((t % (1000 * 60)) / 1000);
			document.getElementById("day").innerHTML = days;
			document.getElementById("hour").innerHTML = hours;
			document.getElementById("minute").innerHTML = minutes;
			document.getElementById("second").innerHTML = seconds;
			if (t < 0) {
				clearInterval(x);
				document.getElementById("demo").innerHTML = "TIME UP";
				document.getElementById("day").innerHTML = '0';
				document.getElementById("hour").innerHTML = '0';
				document.getElementById("minute").innerHTML = '0';
				document.getElementById("second").innerHTML = '0';
			}
		}, 1000);
	</script>
	<hr>
	<div class="divTable" style="margin-bottom: 80px; color: white;">
		<div class="divTableBody">

			<div class="divTableCell"
				style="background-color: black; border: solid 3px white; border-radius: 10px; text-align: center;">
				<div class="divTableRow">
					<h2>1 Month Package</h2>
					<hr>
				</div>

				<div class="divTableRow">

					<img
						src="data:image/jpeg;base64,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"
						width="220" height="220" />

				</div>
				<div class="divTableRow"
					style="text-decoration: line-through; font-size: 40px;">400฿</div>
				<div class="divTableRow" style="font-size: 50px; color: yellow;">359฿</div>
				<div class="divTableRow">
					<button class="green" type="submit" id="buttonEnter">Select</button>
				</div>
			</div>
			<div class="divTableCell"
				style="background-color: black; border: solid white 3px; border-radius: 10px; text-align: center;">
				<div class="divTableRow">
					<h2>3 Month Package</h2>
					<hr>
				</div>

				<div class="divTableRow">

					<img
						src="https://cdn.shopify.com/s/files/1/0014/3186/3369/products/U-PNDW-3-2.jpg?v=1534449006"
						width="220" height="220" />

				</div>
				<div class="divTableRow"
					style="text-decoration: line-through; font-size: 40px">1200฿</div>
				<div class="divTableRow" style="font-size: 50px; color: yellow;">959฿</div>
				<div class="divTableRow">
					<button class="green" type="submit" id="buttonEnter">Select</button>
				</div>
			</div>
			<div class="divTableCell"
				style="background-color: black; border: solid 3px white; border-radius: 10px; text-align: center;">
				<div class="divTableRow">
					<h2>6 Month Package</h2>
					<hr>
				</div>

				<div class="divTableRow">

					<img
						src="https://www.centurioneurope.co.uk/media/catalog/product/cache/1/image/800x800/9df78eab33525d08d6e5fb8d27136e95/e/8/e8b347ed-45d2-4baf-960a-449db0add7ec_1.jpg"
						width="220" height="220" />

				</div>
				<div class="divTableRow"
					style="text-decoration: line-through; font-size: 40px">2400฿</div>
				<div class="divTableRow" style="font-size: 50px; color: yellow;">1699฿</div>
				<div class="divTableRow">
					<button class="green" type="submit" id="buttonEnter">Select</button>
				</div>
			</div>
			<div class="divTableCell"
				style="background-color: black; border: solid white 3px; border-radius: 10px; text-align: center;">
				<div class="divTableRow">
					<h2>12 Month Package</h2>
					<hr>
				</div>

				<div class="divTableRow">

					<img
						src="https://cdn.shopify.com/s/files/1/0014/3186/3369/products/U-PNDW-12-2.jpg?v=1534449009"
						width="220" height="220" />

				</div>
				<div class="divTableRow"
					style="text-decoration: line-through; font-size: 40px">4800฿</div>
				<div class="divTableRow" style="font-size: 50px; color: yellow;">2999฿</div>
				<div class="divTableRow">
					<button class="green" type="submit" id="buttonEnter">Select</button>
				</div>
			</div>
			<div class="divTableCell"
				style="background-color: black; border: solid white 3px; border-radius: 10px; text-align: center;">
				<div class="divTableRow">
					<h2>36 Month Package</h2>
					<hr>
				</div>

				<div class="divTableRow">

					<img
						src="https://images-na.ssl-images-amazon.com/images/I/616Yezby9-L._SY355_.jpg"
						width="220" height="220" />

				</div>
				<div class="divTableRow"
					style="text-decoration: line-through; font-size: 40px">14400฿</div>
				<div class="divTableRow" style="font-size: 50px; color: yellow;">7999฿</div>
				<div class="divTableRow">
					<button class="green" type="submit" id="buttonEnter">Select</button>
				</div>
			</div>

		</div>
	</div>
	<hr>
	<div
		style="background-color: black; border: 1px solid yellow; border-radius: 10px; margin-left: 300px; margin-right: 300px; margin-bottom: 20px;">
		If you want to use different amount of mounts, type amount of mounts:
		<br>
		<input type="text" id="number">
		<button onclick="calculate()" class="green">Calculate the
			price</button>
		<script>
			function calculate() {
				var field = document.getElementById("number").value;
				var number = parseFloat(field);
				if (number < 0)
					document.getElementById("result").innerHTML = "It cannot be smaller than 0.";
				else if (number < 3)
					document.getElementById("result").innerHTML = "Price: "
							+ number * 359 + "฿";
				else if (number < 6)
					document.getElementById("result").innerHTML = "Price: "
							+ parseFloat(((number - 3) * 309) + 959) + "฿";
				else if (number < 12)
					document.getElementById("result").innerHTML = "Price: "
							+ parseFloat(((number - 6) * 259) + 1699) + "฿";
				else if (number < 36)
					document.getElementById("result").innerHTML = "Price: "
							+ parseFloat(((number - 12) * 209) + 2999) + "฿";
				else if (number <= 60)
					document.getElementById("result").innerHTML = "Price: "
							+ parseFloat(((number - 36) * 169) + 7999) + "฿";
				else
					document.getElementById("result").innerHTML = "You cannot buy for more than 60 months.";

			}
		</script>
		<h5 id="result"></h5>
	</div>
	<button class="open-button" onclick="openForm()">For any
		question</button>
	<div class="chat-popup" id="myForm">
		<form action="/action_page.php" class="form-container"
			style="color: black;">


			<label for="msg"><b>Write your question:</b></label>
			<textarea placeholder="Type message.." name="msg" required></textarea>

			<button type="submit" class="btn">Send</button>
			<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
		</form>
	</div>

	<script>
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}
	</script>
	<footer style="text-align: center;">
		<p>
			Melih Kurtaran © 2019. All rights reserved. Contact: <a
				href="m.kurtaran@student.rug.nl"><i>m.kurtaran@student.rug.nl
			</i></a>
		</p>
	</footer>
</body>
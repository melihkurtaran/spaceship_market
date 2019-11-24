<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8" />
				<link rel='stylesheet'
					href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' />
				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
				<link rel="stylesheet"
					href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
				<link rel="stylesheet"
					href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

				<!-- jQuery library -->
				<script
					src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

				<!-- Popper JS -->
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

				<!-- Latest compiled JavaScript -->
				<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
				<title>Discount</title>
				<link rel="stylesheet" type="text/css" href="style.css" />
				<style>
					body {font-family: Arial, Helvetica, sans-serif;}
					* {box-sizing: border-box;}

					/* Button used to open the chat form - fixed at the bottom of the
					page */
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
					margin-bottom:10px;
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
					font-family: Arial, Helvetica, sans-serif;
					}

					.navbar {
					overflow: hidden;
					background-color: black;
					}

					.navbar a {
					float: left;
					font-size: 16px;
					color: white;
					text-align: center;
					padding: 14px 16px;
					text-decoration: none;
					}

					.navbar a:hover, .dropdown:hover .dropbtn {
					background-color: red;
					}

					.dropbtn {
					background-color: #4CAF50;
					color: white;
					padding: 16px;
					font-size: 16px;
					border: none;
					}

					.dropdown {
					position: relative;
					display: inline-block;
					}

					.dropdown-content {
					display: none;
					position: relative;
					background-color: #f1f1f1;
					min-width: 160px;
					box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
					z-index: 1;
					}

					.dropdown-content a {
					color: black;
					padding: 12px 16px;
					text-decoration: none;
					display: block;
					}

					.dropdown-content a:hover {
					background-color: red;
					}

					.dropdown:hover .dropdown-content {
					display: block;
					}

					.dropdown:hover .dropbtn {
					background-color: #3e8e41;
					}

					fa {
					padding: 20px;
					font-size: 30px;
					width: 50px;
					text-align: center;
					text-decoration: none;
					margin: 5px 2px;
					}

					.fa-facebook {
					background: #3B5998;
					color: white;
					}

					.fa-twitter {
					background: #55ACEE;
					color: white;
					}

					.fa-linkedin {
					background: #007bb5;
					color: white;
					}

					.fa-youtube {
					background: #bb0000;
					color: white;
					}

					.fa-instagram {
					background: #125688;
					color: white;
					}
				</style>
				<style>
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
					font-size: 16px; . navbar { overflow : hidden;
					background-color: #333;
					}
				</style>
			</head>
			<body
				background="https://wallpapermemory.com/uploads/748/cool-space-wallpaper-full-hd-398699.jpg"
				style="font-family: georgia, garamond, serif; font-size: 17px;">

				<p id="time" align="right"></p>
				<script>
					var d = new Date();
					document.getElementById("time").innerHTML = d;
				</script>
				<h1>

					<a href="homepage.html" id="spaceship">Spaceship
						Market</a>
				</h1>

				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Search in market" name="search"
						style="background-color: black; color: white;" />
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
				<hr />

				<div class="navbar">

					<a href="homepage.html">
						<i class="fa fa-bars" style="color: white; padding: 2px;"></i>
						Home
					</a>
					<a href="products.html">
						<i class="glyphicon glyphicon-cloud"
							style="color: white; padding: 2px;"></i>
						Products
					</a>
					<a href="details.html">
						<i class="fa fa-file" style="color: white; padding: 2px;"></i>
						Details
					</a>
					<a href="addItem.html">
						<i class='fas fa-plus' style="color: white; padding: 2px;"></i>
						Add Item
					</a>
					<a href="discount.jsp">% Discount</a>
					<div class="dropdown">
						<button class="dropbtn">Social Media</button>
						<div class="dropdown-content">
							<a href="https://www.youtube.com/melihkurtaran"
								class="fa fa-youtube"></a>
							<a href="https://www.facebook.com/melih.kurtaran"
								class="fa fa-facebook"></a>
							<a href="https://www.instagram.com/melihkurtaran/?hl=en"
								class="fa fa-instagram"></a>
							<a href="https://www.linkedin.com/in/melihkurtaran/"
								class="fa fa-linkedin"></a>
							<a href="https://twitter.com/melih972" class="fa fa-twitter"></a>
						</div>
					</div>
				</div>
				<hr />
				<div style="text-align: center;">
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
				</div>
				<script>
					var deadline = new Date("may 31, 2019 15:37:25").getTime();

					var x = setInterval(function() {

					var now = new Date().getTime();
					var
					t = deadline - now;
					var days = Math.floor(t / (1000 * 60 * 60 *
					24));
					var hours = Math.floor((t % (1000 * 60 * 60 * 24))
					/ (1000 * 60
					* 60));
					var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 *
					60));
					var seconds = Math.floor((t % (1000 * 60)) / 1000);
					document.getElementById("day").innerHTML = days;
					document.getElementById("hour").innerHTML = hours;
					document.getElementById("minute").innerHTML = minutes;
					document.getElementById("second").innerHTML = seconds;
					if (!(t >=
					0)) {
					clearInterval(x);
					document.getElementById("demo").innerHTML = "TIME UP";
					document.getElementById("day").innerHTML = '0';
					document.getElementById("hour").innerHTML = '0';
					document.getElementById("minute").innerHTML = '0';
					document.getElementById("second").innerHTML = '0';
					}
					}, 1000);
				</script>
				<div style="text-align: center;">
					<h1>Special offers for you!</h1>
					<table border="1" style="color:white;margin-left:500px;margin-bottom:50px;">
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Speed</th>
							<th>Old Price</th>
							<th>New price</th>
						</tr>
						<xsl:for-each select="items/item">
							<tr>
								<td>
									<xsl:value-of select="id" />
								</td>
								<td>
									<xsl:value-of select="name" />
								</td>
								<td>
									<xsl:value-of select="speed" />
								</td>
								<td style="text-decoration:line-through;">
									<xsl:value-of select="price" />
								</td>
								<td>
									<xsl:value-of select="dprice" />
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				<button class="open-button" onclick="openForm()">For any question</button>
				<div class="chat-popup" id="myForm">
					<form action="/action_page.php" class="form-container"
						style="color:black;">


						<label for="msg">
							<b>Write your question:</b>
						</label>
						<textarea placeholder="Type message.." name="msg"></textarea>

						<button type="submit" class="btn">Send</button>
						<button type="button" class="btn cancel"
							onclick="closeForm()">Close</button>
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
				<footer style="text-align:center;">
					<p>
						Melih Kurtaran © 2019. All rights reserved. Contact:
						<a href="m.kurtaran@student.rug.nl">
							<i>m.kurtaran@student.rug.nl
							</i>
						</a>
					</p>
				</footer>
			</body>


		</html>


	</xsl:template>
</xsl:stylesheet>

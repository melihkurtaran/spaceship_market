<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Space Market Products</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

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
.divTableCell, .divTableHead {
	border: 1px solid #999999;
}
</style>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

.navbar {
	overflow: hidden;
	background-color: #333;
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
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: red;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}

</style>
</head>
<%
	String productID = request.getParameter("id");
	String productName = request.getParameter("name");
	String type = request.getParameter("type");
	String price = request.getParameter("price");
	
%>
<body
	background="https://blenderartists.org/uploads/default/original/4X/7/e/2/7e2d7bea4ac21388c4a96e1371f375c4ce00094b.jpg"
	style="font-family: georgia, garamond, serif; font-size: 17px;">
	<p id="time" align="right"></p>
	<script>
		var d = new Date();
		document.getElementById("time").innerHTML = d;
	</script>
	<h1>
		<img
			src="https://flaticons.net/gd/makefg.php?i=icons/Education/Spaceship-01.png&amp;r=255&amp;g=255&amp;b=255"
			alt="" width="72" height="72" /> <a id="spaceship"
			href="homepage.html">Spaceship Market</a>
	</h1>
	<p align="right">
		<strong>&gt;&gt;<a href="login.html">Login</a>/<a
			href="registration.html">Registration</a></strong>
	</p>
	<div class="input-group">
		<input type="text" class="form-control" placeholder="Search in market"
			name="search" style="background-color: black; color: white;">
		<div class="input-group-btn">
			<button class="btn btn-default" type="submit">
				<i class="glyphicon glyphicon-search"></i>
			</button>
		</div>
	</div>
	<hr />
	<div class="navbar">
		<a href="homepage.html"><i class="fa fa-bars"
			style="color: white; padding: 2px;"></i>Home</a> <a href="products.html"><i
			class="glyphicon glyphicon-cloud" style="color: white; padding: 2px;"></i>Products</a>
		<a href="details.html"><i class="fa fa-file"
			style="color: white; padding: 2px;"></i>Details</a> <a
			href="addItem.html"><i class='fas fa-plus'
			style="color: white; padding: 2px;"></i>Add Item</a>
			<a href="discount.jsp">% Discount</a> 
			<div class="dropdown">
  <button class="dropbtn">Social Media</button>
  <div class="dropdown-content">
    <a href="https://www.youtube.com/melihkurtaran" class="fa fa-youtube"></a>
    <a href="https://www.facebook.com/melih.kurtaran" class="fa fa-facebook"></a>
    <a href="https://www.instagram.com/melihkurtaran/?hl=en" class="fa fa-instagram"></a>
    <a href="https://www.linkedin.com/in/melihkurtaran/" class="fa fa-linkedin"></a>
    <a href="https://twitter.com/melih972" class="fa fa-twitter"></a>
  </div>
  </div>
	</div>
	<hr />
	<p>What are you looking for?</p>
	<p>Spaceships</p>
	<ul>
		<li><a href="#combat-ships">Combat Ships</a></li>
		<li><a href="#civil-ships">Civil Ships</a></li>
	</ul>
	<h2>
		<a name="combat-ships"></a>Combat Ships
	</h2>
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">0246859</div>
				<div class="divTableCell">Light Fighter</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/6/6e/Ship_Light_Fighter.jpg/180px-Ship_Light_Fighter.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/6/6e/Ship_Light_Fighter.jpg/180px-Ship_Light_Fighter.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">10฿</div>
				<div class="divTableCell">
					<a href="details.html#cs1">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">0472973</div>
				<div class="divTableCell">Heavy Fighter</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/d/d5/Ship_Heavy_Fighter.jpg/180px-Ship_Heavy_Fighter.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/d/d5/Ship_Heavy_Fighter.jpg/180px-Ship_Heavy_Fighter.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">40฿</div>
				<div class="divTableCell">
					<a href="details.html#cs2">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">0351920</div>
				<div class="divTableCell">Cruiser</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/a/a7/Ship_Cruiser.jpg/180px-Ship_Cruiser.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/a/a7/Ship_Cruiser.jpg/180px-Ship_Cruiser.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">150฿</div>
				<div class="divTableCell">
					<a href="details.html#cs3">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">0850274</div>
				<div class="divTableCell">Battleship</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/0/0b/Ship_Battleship.jpg/180px-Ship_Battleship.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/0/0b/Ship_Battleship.jpg/180px-Ship_Battleship.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">300฿</div>
				<div class="divTableCell">
					<a href="details.html#cs4">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">0971482</div>
				<div class="divTableCell">Battlecruiser</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/4/42/Ship_Battlecruiser.jpg/180px-Ship_Battlecruiser.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/4/42/Ship_Battlecruiser.jpg/180px-Ship_Battlecruiser.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">400฿</div>
				<div class="divTableCell">
					<a href="details.html#cs5">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">0631047</div>
				<div class="divTableCell">Bomber</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/e/e3/Ship_Bomber.jpg/180px-Ship_Bomber.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/e/e3/Ship_Bomber.jpg/180px-Ship_Bomber.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">550฿</div>
				<div class="divTableCell">
					<a href="details.html#cs6">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">0139374</div>
				<div class="divTableCell">Destroyer</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/1/14/Ship_Destroyer.jpg/180px-Ship_Destroyer.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/1/14/Ship_Destroyer.jpg/180px-Ship_Destroyer.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">750฿</div>
				<div class="divTableCell">
					<a href="details.html#cs7">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">0999999</div>
				<div class="divTableCell">Deathstar</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/a/a0/Ship_Deathstar.jpg/180px-Ship_Deathstar.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/a/a0/Ship_Deathstar.jpg/180px-Ship_Deathstar.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">50000฿</div>
				<div class="divTableCell">
					<a href="details.html#cs8">Click here for the details</a>
				</div>
				
			</div>
		</div>
		</div>
		<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell"><%=productID %></div>
				<div class="divTableCell"><%=productName %></div>
				<div class="divTableCell">
					<a
						href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOCVOyx4dIwguw89FuzUb5yy0pX6O9K44pQMMXykjbprK1vM5y">
						<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOCVOyx4dIwguw89FuzUb5yy0pX6O9K44pQMMXykjbprK1vM5y"
						alt="" />
					</a>
				</div>
				<div class="divTableCell"><%=price %>฿</div>
				<div class="divTableCell">
					<a href="">Click here for the details</a>
				</div>
				
			</div>
		</div>
	</div>
	<hr />
	<h2>
		<a name="civil-ships"></a>Civil Ships
	</h2>
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">1636259</div>
				<div class="divTableCell">Small Cargo Ship</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/f/fb/Ship_Small_Cargo_Ship.jpg/180px-Ship_Small_Cargo_Ship.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/f/fb/Ship_Small_Cargo_Ship.jpg/180px-Ship_Small_Cargo_Ship.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">8฿</div>
				<div class="divTableCell">
					<a href="details.html#cs9">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">1636849</div>
				<div class="divTableCell">Large Cargo Ship</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/3/32/Ship_Large_Cargo_Ship.jpg/180px-Ship_Large_Cargo_Ship.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/3/32/Ship_Large_Cargo_Ship.jpg/180px-Ship_Large_Cargo_Ship.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">25฿</div>
				<div class="divTableCell">
					<a href="details.html#cs10">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">1592739</div>
				<div class="divTableCell">Recycler</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/1/14/Ship_Recycler.jpg/180px-Ship_Recycler.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/1/14/Ship_Recycler.jpg/180px-Ship_Recycler.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">75฿</div>
				<div class="divTableCell">
					<a href="details.html#cs11">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="divTable">
		<div class="divTableBody">
			<div class="divTableRow">
				<div class="divTableHead">Spaceship ID</div>
				<div class="divTableHead">Name</div>
				<div class="divTableHead">Photo</div>
				<div class="divTableHead">Price</div>
				<div class="divTableHead">Information</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">1853972</div>
				<div class="divTableCell">Colony Ship</div>
				<div class="divTableCell">
					<a
						href="http://wiki.ogame.org/images/thumb/0/09/Ship_Colony_Ship.jpg/180px-Ship_Colony_Ship.jpg">
						<img
						src="http://wiki.ogame.org/images/thumb/0/09/Ship_Colony_Ship.jpg/180px-Ship_Colony_Ship.jpg"
						alt="" />
					</a>
				</div>
				<div class="divTableCell">100฿</div>
				<div class="divTableCell">
					<a href="details.html#cs12">Click here for the details</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<button class="open-button" onclick="openForm()">For any question</button>
	<div class="chat-popup" id="myForm">
  <form action="/action_page.php" class="form-container" style="color:black;">
    

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
	<footer style="text-align:center;">
		<p>
			Melih Kurtaran &copy; 2019. All rights reserved. Contact: <a
				href="m.kurtaran@student.rug.nl"><em>m.kurtaran@student.rug.nl
			</em></a>
		</p>
	</footer>
</body>

</html>
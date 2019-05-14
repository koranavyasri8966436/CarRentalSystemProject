<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAR RENTAL</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="393589827949-9031vobm9i9dv4thc3r2igpjof1cgvvp.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<style>
#main {
	width: 100%;
	height: 100vh;
	background-image: url("images/abouthome.jpg");
	background-size: cover;
}

nav {
	width: 100%;
	height: 80px;
	background-color: #000;
	line-height: 80px;
}

nav ul {
	float: right;
	marign-right: 30px;
}

nav ul li {
	list-style-type: none;
	display: inline-block;
	transition: 0.8s all;
	font-size: 130%;
}

nav ul li:hover {
	background-color: #f39d1a;
}

nav ul li a {
	text-decoration: null;
	color: #fff;
	padding: 30px;
}
</style>
</head>
<body>
	<div id="main">
		<nav> <img src="images/logo-home.png">
		<ul>
			<li><a href="DisplayAllCarsInHomePage"><i
					class="fa fa-automobile"></i> POPULAR CARS</a></li>
			<li><a href="about.html"><span
					class="glyphicon glyphicon-globe"></span> ABOUT US</a></li>
			<li><a href="Register.html"><span
					class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
			<li><div class="g-signin2" data-onsuccess="onSignIn"></div></li>
			<li><a href="#" onclick="signOut();">Sign out</a></li>
			<script type="text/javascript">
function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
  System.out.println(profile.getId());
  console.log('Name: ' + profile.getName());
  System.out.println(profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
}
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
      });
  }
</script>
			<!-- Trigger the modal with a button -->
			<li><a href="#" data-toggle="modal" data-target="#myModal"><span
					class="glyphicon glyphicon-earphone"></span> CONTACT US</a></li>
			<!-- Modal -->

			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Contact Us</h4>
						</div>
						<div class="modal-body">
							<p>
								<b>Office Number : <font color="orange">9876543210</font></b>
							</p>
							<p>
								<b>Office Email : <font color="orange">orangecarrental@gmail.com</font></b>
							</p>
							<p>
								<b>Visit us at : <font color="orange">RoyalBuilding-201A,
										BudhaNagar, Amaravathi, AndhraPradesh</font></b>
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>
	</div>
	</ul>
	</nav>
</body>
</html>
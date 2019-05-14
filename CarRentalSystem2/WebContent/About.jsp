<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<title>ABOUT US</title>
<style type="text/css">
#main{
width:100%;
height:100vh;
<!--background-image:url("https://cdn.wallpapersafari.com/52/19/KB4U6X.jpg");-->
background-size:cover;
transition: .5s;

}
.card-banner {
	display: flex;
	position: relative;
	overflow: hidden;
	background-color: #FFA500;
	background-size: cover;
	border-radius: 5px;
}

.card-banner .card-body {
	background-size: cover;
	position: relative;
	z-index: 5;
	
}



/* overlay effects */
.overlay-cover {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	width: 100%;
}

.overlay {
	background-color:rgba(0, 0, 0, 0.65) ;
	z-index: 10;
	padding: 1.25rem;
	color: #FFD700;
}

.overlay-grad {
	position: relative;
}

.overlay-grad::before {
	position: absolute;
	content: "";
	display: block;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: #FFD700;
	background: -webkit-gradient(linear, left top, right bottom, from(#FFD700),
		to(#FFA500));
	background: linear-gradient(to bottom right,#FFD700 , #FFA500);
	opacity: .6;
	transition: .5s;
}

.overlay-grad:hover:before {
	opacity: .9;
}
</style>
</head>
<body>
<div id = "main">
	<div class="container">
		<br>
		<p class="text-center">
			About Orange Car Rental Company</a>
		</p>
		<hr>
		<div class="row">
			<aside class="col-sm-3">
			<div class="card-banner  overlay-grad" style="height: 250px;">
				<div class="card-body text-white">
					<h5 class="card-title">20+ Cars</h5>
					<p class="card-text">Our fleet consists of 20 cars of different models</p>
				</div>
			</aside>
			<aside class="col-sm-3">
			<div class="card-banner  overlay-grad" style="height: 250px;">
				<div class="card-body text-white">
					<h5 class="card-title">5 cities</h5>
					<p class="card-text">we are here to provide cars in five cities across AP</p>
				</div>
			</aside>
			 <aside class="col-sm-3">
			<div class="card-banner  overlay-grad" style="height: 250px;">
				<div class="card-body text-white">
					<h5 class="card-title">Go Anywhere</h5>
					<p class="card-text">Our cars have all-India permits.Just remember to pay state tolls and entry taxes</p>
				</div>
			</aside>
			 
			 <aside class="col-sm-3">
			<div class="card-banner  overlay-grad" style="height: 250px;">
				<div class="card-body text-white">
					<h5 class="card-title">24/7 Customer Support</h5>
					<p class="card-text">A dedicated 24x7 customer support team always at your service to help solve any problem</p>
				</div>
			</aside>
	</div>
	<br>
	<br>
	<article class="bg-secondary mb-2">
	<div class="card-body text-center">
		<p class="h5 text-white">Orange Car Rental is a car rental company that
			has been operating since 2019.</p>
		<p class="h5 text-white">We've taken the best out of our rewarded
			orange customer service. We've created it as a strong and reliable
			rental company.<br/> Our fleet consists of only recent and new car models
			equipped to get you safely around and all over AP.</p>
			<br/>
		<p class="h5">If you need any assistance regarding your trip feel free to reach us by email on : <font color = "orange">orangecarrental@gmail.com</p>
		<p><font color = "black">Looking forward to welcome you</p>
		<p class="h5"><font color="orange">- The Orange team.</p>
	</div>
	</article>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.ArrayList,com.ts.carrental.dto.Car"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>
  <title>FEATURED CARS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
  <style>
  nav{
width:100%;
height:80px;
background-color:#000;
line-height:80px;
}
  </style>
</head>
<body>
<nav>
 <h1  style="background-color:orange; font-size:4vw; font-weight:; text-align:center;">FEATURED CARS</h1>
 </nav>
<div class="container-fluid">
<c:forEach var="car" items="${carsData}">
  <div class="row">
    <div class="col-sm-7" style="background-color:lavender">
    <br/>
    <img src = "images/${car.image}" height="450" width="850"></a>
    <br/>
    </div>
    <div class="col-sm-5" style="background-color:lavenderblush; font-size:2vw; font-weight:100">
    <br/> <br/>
    CarModel : ${car.carModel} <br/>
	CarColor : ${car.carColor} <br/>
	Status   : ${car.status}   <br/>
	Capacity : ${car.capacity} <br/>
   	BasePrice : ${car.basePrice} <br/>	
   	<c:forEach begin="1" end="${car.rating}" varStatus="loop">
    <i class='fa fa-star' aria-hidden="true" style="color: gold;"></i>&nbsp;
    </c:forEach>
   <c:forEach begin="1" end="${5-car.rating}" varStatus="loop">
    <i class="fa fa-star-o" aria-hidden="true" style= "color: gold;"></i>&nbsp; 
    </c:forEach>
   	<br/>
   	<br/><br/>
    </div>
   </div>
</c:forEach>
</div>
</body>
</html>


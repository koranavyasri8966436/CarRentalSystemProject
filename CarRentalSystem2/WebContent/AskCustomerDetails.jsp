<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<body>
<form action="AddCustomerDetails" method="post" class="form-horizontal">
<fieldset>
<a href="CustomerHome.jsp" class="btn btn-danger" >
<span class="glyphicon glyphicon-arrow-left"></span> Back</a>
<h2><center>Please fill the details to book the car..</center></h2>
<br/><br/>
<div class="form-group">
  <label class="col-md-4 control-label" for="cAddress"><font size="3">Address</font></label>
  <div class="col-md-4">
  <input id="cAddress" name="cAddress" type="text" placeholder = "Enter state,  city,  street,  doorno,  pincode" class="form-control input-md" required="">
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="MobileNumber"><font size="3">MobileNumber</font></label>  
  <div class="col-md-4">
  <input id="mobilenumber" name="cPhoneno" type="tel" pattern = "[0-9]{10}" placeholder ="Enter phone number"  class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="cLicenseNo"><font size="3">LicenseNumber</font></label>  
  <div class="col-md-4">
  <input id="cLicenseNo" name="cLicenseNo" type="text" placeholder ="Enter LicenseNo number" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-6 control-label" fhttp://www.arcticlighthotel.fi/files/5614/7737/8810/ArcticLightHotel_car_rental.jpgor="submit"></label>
    <button type="submit" class="btn btn-danger" >SUBMIT</button>
  </div>
</div>
</fieldset>
</form>
</body>
</html>
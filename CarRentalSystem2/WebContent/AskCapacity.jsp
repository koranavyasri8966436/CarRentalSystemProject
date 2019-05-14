<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ask Capacity</title>
<style>
.center{
margin : auto;
width :10%;
border: 3px solid #0000;
padding:8px;
}
div{
width:150px;
}
p{
font-size:18px;
}
</style>
</head>
<body>
<jsp:useBean id="customerData" class="com.ts.carrental.dto.Customer" scope="request" />
		<jsp:include page = "CustomerHome.jsp"></jsp:include>
<div class="center">		
<form action="AvailableCarsOfCapacity" method="post">
<div class = "form-group">
<br/><br/><br/><br/><br/><br/>
<p>Choose Capacity Of Car:</p>
 <select class  = "form-control" name ="capacity">
 <option value="4" style="color:red">4</option>
  <option value="7" style="color:green">7</option>
 </select>
 <br/>
  <input type="submit" class="btn btn-danger" value="SUBMIT">
 </div>
 </div>
</form>
</body>
</html>
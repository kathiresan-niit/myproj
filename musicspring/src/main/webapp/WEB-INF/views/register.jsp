<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'></c:url>"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'></c:url>"></script>
<title>Register here</title>
<style type="text/css">
.content
{
background-color: gray;
height: 80%x;
width:90%;
margin-left: 10%;
margin-top: 10%;
border-radius:2%; 
}
.form-control{
width:50%;
}
</style>
</head>
<body>

<div class="container-fluid vertical" >
<div class="content">
<form action="page2.jsp" role="form" >
  <div class="form-group">
    <label for="name">Name :</label>
    <input type="text" class="form-control" id="name" style="widdth:30%" placeholder="enter name"/>
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd"/>
  </div>
  <div class="form-group">
    <label for="confirmpwd">Confirm Password:</label>
    <input type="password" class="form-control" id="cpwd"/>
  </div>
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" style="widdth:30%"/>
  </div>
  
  <button type="submit" class="btn btn-primary active">Register</button>

</form>

</div>
</div>
</body>
</html>
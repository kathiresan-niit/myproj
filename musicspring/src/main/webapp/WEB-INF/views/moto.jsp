<!DOCTYPE html>
<html lang="en">
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <meta charset="UTF-8">
    <title>Angular Sort and Filter</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <style>
        body { padding-top:50px; }
    </style>

    <!-- JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
    <script src="<c:url value='/resources/app.js'></c:url>"></script>

</head>
<body>

<div class="container" ng-app="sortApp" ng-controller="mainController">
  
<%
String img1=request.getParameter("mname");
out.println(img1);
if(img1.equals("moto"))
{
	
out.println("<div class='alert alert-info'>  <h3>Product is Moto</h3></div>");	
%>

<form>
<div class="form-group">
	<div class="input-group">
		<div class="input-group-addon"><i class="fa fa-search"></i></div>
		<input type="text" class="form-control" placeholder="search" ng-model="byname">
	</div>
</div>
</form>


<div class="table table-bordered table-stripedtable-responsive">
<table class="display table" width="100%">
<thead>
<tr>
<th>pid</th>
<th>pname</th>
<th>cost</th>
<th>available</th>
</tr>
</thead>
<tbody>
	<tr ng-repeat="c in motorolo|filter:byname">
		<td>{{c.pid}}</td>
		<td>{{c.pname}}</td>
		<td>{{c.cost}}</td>
		<td>{{c.available}}</td>
	</tr>
</tbody>
</table>
</div>
<%
}
else if(img1.equals("sony"))
{
	out.println("<center><h1 style='color:green'>you have chosen tabla!!!!!!</h1></center>");
out.println("<center><h1 style='color:blue'>tabla is a classical musical instrument </h1></center>");
%>
<form>
<div class="form-group">
	<div class="input-group">
		<div class="input-group-addon"><i class="fa fa-search"></i></div>
		<input type="text" class="form-control" placeholder="search" ng-model="byname">
	</div>
</div>
</form>


<div class="table-responsive">
<table class="display table" width="100%">
<thead>
<tr>
<th>pid</th>
<th>pname</th>
<th>cost</th>
<th>available</th>
</tr>
</thead>
<tbody>
	<tr ng-repeat="c in sony|filter:byname">
		<td>{{c.pid}}</td>
		<td>{{c.pname}}</td>
		<td>{{c.cost}}</td>
		<td>{{c.available}}</td>
	</tr>
</tbody>
</table>
</div>
<%
}
else if(img1.equals("micro"))
{
	out.println("<center><h1 style='color:green'>you have chosen veena!!!!!</h1></center>");
out.println("<center><h1 style='color:red'>Veena is a divine musical instrument</h1></center>");
%>
<form>
<div class="form-group">
	<div class="input-group">
		<div class="input-group-addon"><i class="fa fa-search"></i></div>
		<input type="text" class="form-control" placeholder="search" ng-model="byname">
	</div>
</div>
</form>


<div class="table-responsive">
<table class="display table" width="100%">
<thead>
<tr>
<th>pid</th>
<th>pname</th>
<th>cost</th>
<th>available</th>
</tr>
</thead>
<tbody>
	<tr ng-repeat="c in mx|filter:byname">
		<td>{{c.pid}}</td>
		<td>{{c.pname}}</td>
		<td>{{c.cost}}</td>
		<td>{{c.available}}</td>
	</tr>
</tbody>
</table>
</div>
<%}
else
{
%>
<form>
<div class="form-group">
	<div class="input-group">
		<div class="input-group-addon"><i class="fa fa-search"></i></div>
		<input type="text" class="form-control" placeholder="search" ng-model="byname">
	</div>
</div>
</form>


<div class="table-responsive">
<table class="display table" width="100%">
<thead>
<tr>
<th>pid</th>
<th>pname</th>
<th>cost</th>
<th>available</th>
</tr>
</thead>
<tbody>
	<tr ng-repeat="c in all|filter:byname">
		<td>{{c.pid}}</td>
		<td>{{c.pname}}</td>
		<td>{{c.cost}}</td>
		<td>{{c.available}}</td>
	</tr>
</tbody>
</table>
</div>
<%
}


out.println("<h1 style='color:red'>do you wanna enjoy buy it!!!!!!</h1>");

%>
<ul class="list-group">
<li><h1><a href="viewcart.jsp">View Cart</a></h1></li>
<li><h1><a href="orderreceived.jsp">Order Received</a></h1></li>
<li><h1><a href="orderconfirmed.jsp">Order Confirmation</a></h1></li>
</ul>



</div>
</div>
</body>
</html>
  
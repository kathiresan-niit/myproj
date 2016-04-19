<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/Header.jsp" %>
    <style>
        body { padding-top:50px; }
        .tablediv{
        width:60%;
        margin-left:20%;
        }
    </style>

    <!-- JS -->
 
    <script src="<c:url value='/resources/app.js'></c:url>"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
<script>

    var app = angular.module('myApp', []);
    
    function MyController($scope, $http){
        
        $scope.getPersonDataFromServer = function() {           
            $http({method: 'GET', url: 'motoang'}).
            success(function(data, status, headers, config) {
            	//alert(data);
               $scope.person =JSON.parse(JSON.stringify(data));
                 //alert($scope.person);
               // $scope.person = JSON.parse(data);
              //v ar ss= $scope.person[0];
               //alert(ss);
	for (var i = 0; i <$scope.person.length; i++) 
	{
    var counter = $scope.person[i];
    console.log(counter.pid);
    return $scope.person;
	}
                //alert( $scope.person[0]);
                
            }).
            error(function(data, status, headers, config) {
             alert("err");
            	// called asynchronously if an error occurs
              // or server returns response with an error status.
            });
        
        };
    };
    
</script>
</head>
<body>
  <div class="well"><b><i>Category is :  ${param.mname} </b></i></div>
    <div data-ng-app="myApp">
  
        <div data-ng-controller="MyController" ng-init="getPersonDataFromServer()">
  <div class="well well-sm">
  Product you are choosing is  {{sf}} 
  </div>        
<div class="tablediv">
  <form>
<div class="form-group">
	<div class="input-group">
		<div class="input-group-addon"><i class="fa fa-search"></i></div>
		<input type="text" class="form-control" placeholder="search" ng-model="sf">
	</div>
</div>
</form>
<div class="table table-bordered table-striped table-responsive">
          <table class="display table">
          <thead>
           <tr>
          <th>product Id</th>
          <th>product Name</th>
          <th>View Product</th>
          </tr>
          </thead>
          <tbody>
         
         
          <tr ng-repeat="p in person | filter:sf">
           <td> {{p.pid}}</td>
            <td>{{p.pname}}</td>
            <td>
                <a href='mxplay?pid={{p.pid}}'><span class="glyphicon glyphicon-hand-up"></span>view</a>
            </td>
            <td> 
             <!-- <img class="img-responsive" src="<c:url value='{{p.imgpath}}'/>" style="width:40%;"> -->
            
            </td>
            
           </tr> 
            
          
          </tbody>
          </table> 
            
            </div>
       
        </div>
        </div>
    </div>
      
</body>
</html>






<%-- <%@page import="musicmodel.MotoMob,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	hi ${message}
	
	 <%
	 Object m=(Object)request.getAttribute("message");
	 ArrayList<MotoMob> mm=(ArrayList<MotoMob>)m;
	 for(Object g:mm)
	 {
		 MotoMob k=(MotoMob)g;
		 out.println(k.getPid());
	 }
	 %>
</body>
</html> --%>
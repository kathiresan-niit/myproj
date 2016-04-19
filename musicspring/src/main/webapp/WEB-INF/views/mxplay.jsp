<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/views/Header.jsp" %>

<style type="text/css">
table {
  border-collapse: separate;
  border-spacing: 0 5px;
}

thead th {
  background-color: #006DCC;
  color: white;
}

tbody td {
  background-color: #EEEEEE;
}

tr td:first-child,
tr th:first-child {
  border-top-left-radius: 6px;
  border-bottom-left-radius: 6px;
}

tr td:last-child,
tr th:last-child {
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
}
        .tablediv{
        width:80%;
        margin-left:10%;
        }
</style>
</head>
<body>
	

<div class="well well-sm">
   ${requestScope.motoobj.getPname()}
  </div>
<div class="tablediv">
<div class="table table-hover  table-responsive">
          <table class="display table">
          <thead>
           <tr>
          <th>product image</th>
          <th>product Id</th>
          <th>product Name</th>
          <th>View Product</th>
          <th>product Id</th>
          <th>Cart</th>
          
          </tr>
          </thead>
          <tbody>
         
         
          <tr>
          <td style="width:50%;"><img class="img-responsive" src="<c:url value='${requestScope.motoobj.getImgpath()}'/>" style="width:40%;"></td>
           <td style="vertical-align: middle;"> ${requestScope.motoobj.getPid()}</td>
            <td style="vertical-align: middle;">${requestScope.motoobj.getPname()}</td>
            <td style="vertical-align: middle;">${requestScope.motoobj.getAvail()}</td>
            <td style="vertical-align: middle;">${requestScope.motoobj.getCost()}</td>
            <td style="vertical-align: middle;">
			<a href="cart.jsp">add</a>
			</td>
           </tr> 
            
          
          </tbody>
          </table> 
            
            </div>
       </div>
         
</body>
</html>
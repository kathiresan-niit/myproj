<html>
<head>

<style type="text/css">
#myCarousel{
margin-top:-3%;
}
}
/*.body{
background-color: ;
}
.form-control
{
width: 100px;
font-style: italic;
}

.content
{
background-color: gray;
height:150px;
width:150px;
margin-left: 300px;
margin-top: 220px;
 
}
*/
.clr{
padding-top: 5%;
}
.clh{
width:2%;
}
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 50%;
      height:50%;
      margin: auto;
  }
</style>

</head>

<body>
<%@ include file="/WEB-INF/views/Header.jsp" %>
<!-- slider  -->

<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
  <!-- Indicators -->
  
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active"> <img src="<c:url value='/resources/image/lowest price.jpg'/>" style="width:50%" alt="First slide">
      <div class="container">
        <div class="carousel-caption">
          <h1>Summer Sales</h1>
          <p>cheap mobiles!!! @ ur door step</p>
          
        </div>
      </div>
    </div>
    <div class="item"> <img src="<c:url value='/resources/image/slide1.jpg'/>" style="width:50%" data-src="" alt="Second slide">
      <div class="container">
        <div class="carousel-caption" style="color:red; ">
          <h1>Samsung with Marshmallow</h1>
          <p>All Samsung Mobiles @ cheap rates </p>
          
        </div>
      </div>
    </div>
    <div class="item"> <img src="<c:url value='/resources/image/slide2.jpg'/>" style="width:50%" data-src="" alt="Third slide">
      <div class="container">
        <div class="carousel-caption">
          <h1>Android N</h1>
          <p>Latest OS Mobile Phones Available</p>
          
        </div>
      </div>
    </div>
     <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    
  </div>
</div>   
<!--<div class="clr"></div> slider end -->

<div class="container vertical" >

<form action="page2.jsp" role="form" >
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" style="width:30%"/>
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd" style="width:30%"/>
  </div>
  
  <div class="checkbox " >
    <label><input type="checkbox"> Remember me</label>
  </div>
  <button type="submit" class="btn btn-primary active">Submit</button>

</form>

</div>

<div class="container-fluid" style="margin-left: 15%;">
    <div class="row">
    <div class="col-sm-4" style="width:30%;height:30%; background-color:#c9302c;">
    <a href="<c:url value='moto'><c:param name='mname' value='sony'/></c:url>">
 <img class="img-responsive" src="<c:url value='/resources/image/ag.jpeg'/>" style="width:80%;">

</a>
    </div>
    
    <div class="col-sm-4" style="width:30%;height:30%; background-color:#449d44;">
    <a href="<c:url value='m'>
<c:param name='mname' value='moto'/>

</c:url>">
 <img class="img-responsive" src="<c:url value='/resources/image/mt.png'/>" style="width:80%;">

</a>

    </div>
    
    <div class="col-sm-2" style="width:30%;height:30%;  background-color:#31b0d5;">
    <a href="<c:url value='moto'><c:param name='mname' value='micro'/></c:url>">
 <img class=" img-responsive" src="<c:url value='/resources/image/ad.png'/>" width="304" height="236" >

</a>

    </div>
    
  </div>
</div>
<a href="all">view All</a>

</body>
</html>

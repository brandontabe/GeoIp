<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.maxmind.geoip.LookupService"%>
<%@ page import="com.maxmind.geoip.Country"%>
<%@ page import="com.geoippractical.lookup.CountryLookup"%>
<%@ page import="com.geoippractical.lookup.CountryLookup"%>
<%@ page import="java.util.Scanner"%>
<% Scanner scanner = new Scanner(System.in);%>

<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
input[type=text] {
	width: 400px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
	width: 40%;
}

.btn {
	color: white;
	width: 120px;
	height: 55px;
	background: black;
	border-radius: 5px;
}
</style>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<%-- 	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" /> --%>

<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>



	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">MB IPLookup</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<!-- <li><a href="#about">About</a></li> -->
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<div class="container">

		<div class="starter-template">
			<h1>Country IP Lookup Service</h1>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	
	
  
	<center>
		<form method="GET" >
			<input type="text" value="" placeholder="Search by IP address.." name="test" id="test"> 
			<button type="submit" class="btn btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-search"></i>
			
		<% 
		LookupService lookupService = new LookupService("../geoippractical/src/main/resources/GeoIP.dat",
				LookupService.GEOIP_MEMORY_CACHE | LookupService.GEOIP_CHECK_CACHE);
		CountryLookup cl = new CountryLookup();
		String tester = request.getParameter("test");
		String iip =  lookupService.getCountry(tester).getName();
		
		%> 
		
		
			</button>
			
			<br>
			<br>
			<br>
			<br>
			
		<h4>Country:<h2><i><%=iip %></i></h2></h4>
		
			
			
		
		</form>
	</center>

	<!-- /.container -->

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>

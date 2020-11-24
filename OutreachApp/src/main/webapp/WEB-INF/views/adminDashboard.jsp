<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Admin Dashboard</title>
<style>
#header {
	background-color: #2ECC71;
	color: black;
	text-align: centre;
	padding: 10px;
	height: 100px;
}

#header1 {
	color: black;
	text-align: centre;
	padding: 10px;
	float: left;
}

#header2 {
	margin-top: 40px; color : black;
	text-align: centre;
	padding: 10px;
	float: right;
	color: black;
}
#navigation {
	line-height: 40px;
	background-color: lightgray;
	height: 500px;
	width: 100px;
	float: left;
	padding: 5px;
}

#section {
	width: 350px;
	float: left;
	padding: 10px;
}

#foot {
	background-color: #2ECC71;
	color: black;
	text-align: centre;
	padding: 6px;
	clear: both;
}

#b {
	float: right;
}

#firstname {
	float: right;
}

#lastname {
	float: right;
}
.button {
  background-color: #2ECC71;
  border: none;
  color: white;
  padding: 0 px;
 
  
  text-align: center;
  text-decoration: none;
  display: inline-block;
 
  margin:  20px;
 
  transition: 0.5s;
  cursor: pointer;
  border-radius: 28px;
  width:200px;
  font-family: cursive;
  font-size: 20px;
  
}


.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

.button:hover {
	background-position: right;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	opacity:0.9;
}
</style>
</head>
<body>
	<div id="header">
		<div id="header1">
			<h1>Admin Dashboard</h1>
		</div>
		<div id="header2">
			<span> <a class="button" href="/adminHome" id="b">Log Out</a> 
			<label id="lastname">${alname}  &nbsp &nbsp</label> 
			<label id="firstname">${afname}	&nbsp &nbsp</label>
			<label id="aid"> ${aId}	&nbsp &nbsp</label>
			</span>
		</div>
	</div>

	<div id="navigation">
		<a  class="button" href="/createEventAdmin/${aId}">Create Event</a> <br> <br> 
		<a  class="button" href="/eventviewAdmin/${aId}">View Event</a><br> <br> 
		<a class="button" href="/donateadmin"> Donate</a>
	</div>

	<div id="section"></div>

	<div id="foot">outreach</div>
</body>
</html>
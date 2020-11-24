<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-I">
<title>Html</title>
<style>
#header{
 background-color:orange;
color:white;
text-align:centre;
padding:10px;

}

#navigation{
  line-height:40px;
   background-color:lightgray;
 height:500px;
 width:100px;
 float:left;
 padding:5px;

}

#section{
   width:350px;
   float:left;
    padding:10px;
}

#foot{
 background-color:orange;
color:white;
text-align:centre;
padding:6px;
 clear:both;
}

</style>


</head>

<body>
<div id="header">
<h1>Admin Dashboard</h1>
</div>

<div id="navigation">
<a href="#">Create Event</a>
<a href="#">Log Off</a>
</div>

<div id="section">
<form:form><a href="/attendance">Attendence</a></form:form>
</div>

<div id="foot">
outreach
</div>


</body>


</html>
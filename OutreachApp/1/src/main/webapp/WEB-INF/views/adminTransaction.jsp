<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<style>
body {
	margin-left: 30%;
	margin-top: 10%;
	background-image: url("C:/Users/841664/Pictures/vd.jpg");
}

table {
	column-width: 50px;
	padding: 10px;
}

#eventName {
	font: bold;
}
</style>
</head>

<body>
	<form:form action="/successadmin">
		<input id="donationAmount" type="number"  min="0"  required="required" />
			
			 <input type="submit" value="Donate" />

	</form:form>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>You have successfully registered for ${activity }</h2>
	<p>
		<a href="/eventSchedule/${id }">View Complete Event Schedule</a>
	</p>
	<form:form action="/invitefriend">
Want to invite your friend for this event?:<br>
		<input type="email" placeholder="abc@domainname.com" required
			name="email">
		<input type="button" value="Invite">
	</form:form>
	<div>${msg }</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>upcoming EventList Admin</title>
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
</style>
</head>
<body>
	<div id="header">
		<div id="header1">
			<h1>Admin Dashboard</h1>
		</div>
		<div id="header2">
			<span> <a href="/adminHome" id="b">Log Out</a> 
			<label id="lastname">${alname}  &nbsp &nbsp</label> 
			<label id="firstname">${afname}	&nbsp &nbsp</label>
			<label id="aid"> ${id}	&nbsp &nbsp</label>
			</span>
		</div>
	</div>

	<div id="navigation">
	<a href="#">Back </a>
<!-- 		<a href="/createEventAdmin">Create Event</a>
		<br><br>
		<a href="/eventViewAdmin">View Event</a> -->
	</div>

	<div id="section">
		<form:form action="/eventCreated/${id}"  modelAttribute="event" method="post">
			<table border="3">
				<tr>
					<td><label for="eventId">Event ID</label></td>
					<td><form:input path="eventId" id="eventId"
							required="required" /></td>
				</tr>
				<tr>
					<td><label for="activity">Activity</label></td>
					<td><form:select path="activity" id="activity"
							items="${activityList}" /></td>
				</tr>
				<tr>
					<td><label for="description">Description</label></td>
					<td><form:textarea path="description" rows="5" cols="17"
							required="required" placeholder="description" /></td>
				</tr>
				<tr>
					<td><label for="place">Place</label></td>
					<td><form:input path="place" id="place" required="required"
							placeholder="Events place" /></td>
				</tr>
				<tr>
					<td><label for="contactno">Contact No.</label></td>
					<td><form:input path="contactNumber" id="contactno"
							maxlength="10" pattern="[7-9]{1}[0-9]{9}" required="required"
							placeholder="Enter ur mobile no." /></td>
				</tr>
				<tr>
					<td><label for="date">Date</label></td>
					<td><form:input type="text" path="date" id="date"
							placeholder="yyyy-mm-dd" pattern="\d{4}\-\d{1,2}\-\d{1,2}"
							required="required" /></td>
				</tr>
			</table>

			<input type="submit">
		</form:form>

		<div>
			<p>${msg}</p>
		</div>
	</div>

	<div id="foot">outreach</div>

</body>
</html>
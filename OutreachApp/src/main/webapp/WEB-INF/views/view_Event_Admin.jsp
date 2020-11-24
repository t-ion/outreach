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
	margin-top: 40px;
	color: black;
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
			<span> <a href="/adminHome" id="b">Log Out</a> <label
				id="lastname">${alname} &nbsp &nbsp</label> <label id="firstname">${afname}
					&nbsp &nbsp</label> <label id="aid"> ${id} &nbsp &nbsp</label>
			</span>
		</div>
	</div>

	<div id="navigation">
		<a href="#">Back </a>
		<!-- 		<a href="/createEventAdmin">Create Event</a>
		<br><br>
		<a href="/eventViewAdmin">View Event</a> -->
	</div>


	<center>
		<div id="section" >
			<h2>Events created by you</h2>
			<table>
				<thead>
					<tr>
						<th>Event ID</th>
						<th>Activity</th>
						<th>Date</th>
						<th>Place</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="events" items="${eventList}">
						<tr>
							<form:form method="get"
								action="/attendance/${events.eventId}/${aId}">
								<td>${events.eventId}</td>
								<td>${events.activity}</td>
								<td>${events.date}</td>
								<td>${events.place}</td>
								<td><input type="submit" value="Take Attendance" /></td>
							</form:form>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</center>

	<div id="foot">outreach</div>

</body>
</html>
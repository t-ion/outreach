<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

</head>
<body>
<h2>You have been registered for this event Successfully.</h2>
	<form>
		<table>
			<tr>
				<td><label>Activity</label></td>
				<td><label id="activity">${eventsc.activity}</label></td>
			</tr>
			<tr>
				<td><label>Description</label></td>
				<td><label id="description">${eventsc.description}</label></td>
			</tr>
			<tr>
				<td><label>Place</label></td>
				<td><label id="place">${eventsc.place}</label></td>
			</tr>
			<tr>
				<td><label>Contact No.</label></td>
				<td><label id="contact"> ${eventsc.contactNumber} </label></td>
			</tr>
			<tr>
				<td><label>Date</label></td>
				<td><label id="date">${eventsc.date}</label></td>
			</tr>
		</table>
	</form>
</body>
</html>
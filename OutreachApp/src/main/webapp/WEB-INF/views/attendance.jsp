<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance of volunteers</title>
</head>
<body>
	<h2>Please tick for the volunteers who are present:a${aId } e ${eId}</h2>
	<form:form action="/attendancesubmit/${eId}" method="POST">
		<table>
			<tr>
				<td>Volunteer ID</td>
				<td>Volunteer Name</td>
			</tr>
			
				<c:forEach var="volunteer" items="${volunteerList}">  
				<tr>
				<td>
				<c:out value="${volunteer.volunteerId}"/>
				</td>
				<td>
					<c:out value="${volunteer.firstName}"/>
				</td>
				<td>
           			 <form:checkbox path="presentList" value="${volunteer.volunteerId}"/> <br>
   				 
				</td>
				</tr>
				</c:forEach>
			<tr>
				<td colspan="3"><input type="submit" /></td>
			</tr>
		</table>
	</form:form>
	<div class="msg">${msg}</div>
</body>
</html>
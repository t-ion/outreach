<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance of volunteers</title>
</head>
<body>
<form:form action="/attendancesubmit" method="post" modelAttribute="att">
<table>
			<tr><th>Please tick for the volunteers who are present:</th></tr>
			<tr>
				<td><form:checkboxes items="${volunteerlist}"
						path="presentlist" /></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" /></td>
			</tr>
		</table>
  </form:form>
  <div class="msg">${msg}</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>upcoming EventList</title>
</head>
<body>

<table>

<thead>
<tr>
<th>Event Name</th>
</tr>
</thead>
<tbody>
<c:forEach var="events" items="${eventList}">
                     <tr><form:form action="/eventSchedule/${events.eventId}">
                        <td>${events.eventName}</td>
                        <td>${events.eventId}</td>
                        <td><button value="join">join</button></td>
                        </form:form>
                     </tr>
                  </c:forEach>
</tbody>
</table>

<input type="submit" value="Invite Colleague" >

</body>
</html>
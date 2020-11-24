<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<form>
<table >
<tr><td><label>ACTIVITY</label></td>
<td><label id="activity">${eventsc.eventName}</label></td>
</tr>
<tr><td><label>Decription</label></td>
<td><label id="decryption">${eventsc.eventId}</label></label></td>
</tr>
<tr><td><label>Place</label></td>
<td><label id="place" >Kolhapur</label></td>
</tr>
<tr><td><label>Contact No.</label></td>
<td><label id="contact" > 999999 </label></td>
</tr>
<tr><td><label>Date</label></td>
<td><label id="date">16/03/1998</label> </td>
</tr>
</table>

<input type="submit" value="Invite Colleague" >
</form>
</body>
</html>
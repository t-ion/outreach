<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<form>
<table >
<tr><td><label for="activity">Activity</label></td>
<td><input type="text" id="activity" required placeholder="Activity Name"></td>
</tr>
<tr><td><label for="decrypt">Decription</label></td>
<td><textarea id="decrypt" rows="5" cols="17"required placeholder="description"></textarea></td>
</tr>
<tr><td><label for="place">Place</label></td>
<td><input type="text" id="place" required placeholder="Events place"> </td>
</tr>
<tr><td><label for="contactno">Contact No.</label></td>
<td><input type="number" id="contactno"   maxlength="10" pattern="[7-9]{1}[0-9]{9}" required placeholder="Enter ur mobile no."></td>
</tr>
<tr><td><label for="date">Date</label></td>
<td><input type="date" id="date" required></td>
</tr>
</table>

<input type="submit">
</form>
</body>
</html>
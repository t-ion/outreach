<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<style>
.third {
	background-image: url(../images/adminpage.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
	background-height: 90%;
	margin-top: 300px;
	border-style: dashed;
	margin-left: 550px;
	margin-right: 400px;
	border-radius: 50px;
	border: 5px solid yellow;
	padding: 50px;
}

input {
	width: 200%;
	height: 150%;
}

.header {
	font-size: 70px;
	font-style: bold;
	background-color: green;
	margin-top: 10px;
}

h1 {
	margin: 5px 5px;
	background-color: yellow;
}

h2 {
	margin: 3px 3px;
}

#submit {
	margin: 3px 3px;
	background-color: slategray;
	font-style: italic;
	font-size: 20px;
}

#adminId {
	height: 25px;
}

#password {
	height: 25px;
}
</style>

<body class="third">
	<center>
		<h1>Login for Admin</h1>

		<form:form action="/loginAdmin" method="post" modelAttribute="admin">
			<table>
				<tr>
					<td><h2>Admin Id:</h2></td>
					<td><form:input path="adminId" id="adminId" name="adminId"
							required="required" /></td>
				</tr>
				<tr>
					<td><h2>Password:</h2></td>
					<td><form:password path="password" id="password"
							name="password" required="required" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login" name="submit"
						id="submit" /></td>
				</tr>

			</table>
		</form:form>
	</center>
</body>
</html>
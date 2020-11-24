<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>Outreach Homepage</title>
<style>
img {
	position: absolute;
	width: 100%;
	height: 100%;
}

.first {
	background-color: Red;
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	position: absolute;
	margin-left: 800px;
	margin-top: 450px;
}

.second {
	background-color: Red;
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	position: absolute;
	margin-left: 800px;
	margin-top: 500px;
}

body {
	background-image: url(../images/vd.jpg);
}

button {
	background-color: skyblue;
	color: black;
	padding: 10px;
	size: 10px;
}
</style>
<body>

	<form action="adminHome">
		<div class="first">
			<button>ADMIN</button>
		</div>
	</form>
	<form action="volunteerHome">
		<div class="second">
			<button>VOLUNTEER</button>
		</div>
	</form>
</body>
</html>
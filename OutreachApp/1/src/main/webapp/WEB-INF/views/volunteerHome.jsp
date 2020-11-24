<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Volunteer Homepage</title>

<style>
p{
color:white;
size:15px;
}
.third {
	background-image:
		url(../images/Turkey_Coast_Stones_Phaselis_Trees_HDR_572732_3735x2495.jpg);
	background-repeat: no-repeat;
	margin-top: 150px;
	margin-left: 550px;
	margin-right: 400px;
}

.first {
	position: absolute;
	color: white;
	margin-top: 100px;
	margin-left: 250px;
	background-color: blue;
	width: 150px;
	height: 50px;
	size: 30px;
}

.second {
	position: absolute;
	margin-top: 100px;
	margin-left: 550px;
	color: white;
	background-color: blue;
	width: 150px;
	height: 50px;
	size: 30px;
}

.glow {
	font-size: 40px;
	color: #fff;
	text-align: center;
	-webkit-animation: glow 1s ease-in-out infinite alternate;
	-moz-animation: glow 1s ease-in-out infinite alternate;
	animation: glow 1s ease-in-out infinite alternate;
}

@
-webkit-keyframes glow {from { text-shadow:0010px#fff, 0020px#fff,
	0030px#e60073, 0040px#e60073, 0050px#e60073, 0060px#e60073, 0070px#e60073;
	
}

to {
	text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px
		#ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
}

#submit {
	font-size: 40px;
	color: #fff;
	text-align: center;
	-webkit-animation: glow 1s ease-in-out infinite alternate;
	-moz-animation: glow 1s ease-in-out infinite alternate;
	animation: glow 1s ease-in-out infinite alternate;
}

@
-webkit-keyframes glow {from { text-shadow:0010px#fff, 0020px#fff,
	0030px#e60073, 0040px#e60073, 0050px#e60073, 0060px#e60073, 0070px#e60073;
	
}

to {
	text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px
		#ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
}

#volunteerId {
	height: 25px;
}

#password {
	height: 25px;
}
</style>
</head>
<body class="third">
	<h1 class="glow">Volunteer Homepage</h1>

	<form action="volunteerLogin">
		<button class="first">VOLUNTEER LOGIN</button>
	</form>
	<form action="volunteerRegistration">
		<button class="second">VOLUNTEER REGISTER</button>
	</form>
	<div>
		<p>${msg}</p>
	</div>
</body>
</html>
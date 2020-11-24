<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <style>
    body{
        margin-left: 30%;
        margin-top: 10%;
        background-image: url("C:/Users/841664/Pictures/vd.jpg");
    }
    table{
        column-width:50px;
        padding: 10px;
    }
  #eventName
  {
    font: bold;
  }

    </style>

</head>
<body>
    <form:form action="/discountTranscation">
<div><h1>Events</h1></div>
<div>
<table frame="box">
<tr>
<td><input type="text"></td>
<td><input type="submit" value="Proceed for transaction" /></td>
</tr>


</table>
</div>      

</form:form>

</body>
</html>
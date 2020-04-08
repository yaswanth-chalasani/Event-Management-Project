<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Management System</title>
</head>
<body style="background-image:url('file:///C:/Users/V.SRAVANI/eclipse-workspace/eventmanagement/src/main/webapp/welcome.jpg')">
<center>
<h1 style="color:white;"><strong>VISION OF REALITY</strong></h1>
<h1 style="color:pink;"><sub><i><marquee><b>Your Vision Our Innovation</b></marquee></i></sub></h1>
<br>
<form action="success" modelAttribute="admin">
<div>
User ID:<input type="text" name="username"/>
<br>
<br>
Password:<input type="password" name="password"/>
<br>
<br>
</center>
<p align="center" font size="20"><input type="submit" name="submit" value="Login"/></p>
</div>
</form>
<h1 style="color:pink;"><sub><i><marquee><b>Your Vision Our Innovation</b></marquee></i></sub></h1>
</center>
</body>
</html>



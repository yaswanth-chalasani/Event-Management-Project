<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update event list</title>
</head>
<body style="background-image:url('file:///C:/Users/V.SRAVANI/eclipse-workspace/eventmanagement/src/main/webapp/WEB-INF/view/image3.jpg')">
<center>
<h1 style="color:brown;"><strong>VISION OF REALITY</strong></h1></center>
<h1 style="color:Tomato;"><sub><i><marquee><b>Your Vision Our Innovation</b></marquee></i></sub></h1>

<h3>ADD EVENT</h3>
<form:form action="saveEvent" modelAttribute="event" method="POST" >
		<table>
			<tbody>
				<tr>
					<td><label>Event Name:</label></td>
					<td><form:input path="eventName" /></td>
				</tr>
				
				<tr>
					<td><label>Contact number:</label></td>
					<td><form:input path="contact" /></td>
				</tr>
				
				<tr>
					<td><label>Event Location:</label></td>
					<td><form:input path="eventlocation" /></td>
				</tr>
				<tr>
					<td><label>Event Unit:</label></td>
					<td><form:input path="eu" /></td>
				</tr>
				
				<tr>
					<td><label>Event_title:</label></td>
					<td><form:input path="event_title" /></td>
				</tr>
				<tr>
					<td><label>eventDate:</label></td>
					<td><form:input path="evd" type="date"/></td>
				</tr>
				<tr>
					<td><label>amount:</label></td>
					<td><form:input path="amount" /></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="Save" class="save"></td>
				</tr>
			</tbody>
		</table>
	</form:form>
	<p>
		<a href="http://localhost:8080/EventManagementSystem/event/list">Back to Event
			List</a>
	</p>
</body>
</html>
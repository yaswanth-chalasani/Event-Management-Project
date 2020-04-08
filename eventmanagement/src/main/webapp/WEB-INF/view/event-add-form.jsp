<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Event</title>
<style>
.error
{
color:red;
}
</style>
</head>
<body style="background-image:url('file:///C:/Users/V.SRAVANI/eclipse-workspace/eventmanagement/src/main/webapp/WEB-INF/view/sky.jpeg')">
<center>
<h1 style="color:brown;"><strong>VISION OF REALITY</strong></h1>
<h1 style="color:orange;"><sub><i><marquee><b>Your Vision Our Innovation</b></marquee></i></sub></h1>
</center>
<h3>ADD EVENT</h3>
<form:form action="saveEvent" modelAttribute="event" method="POST" >
		<table>
			<tbody>
			    <tr>
					<td><label>Event_ID:</label></td>
					<td><form:input path="id" /></td>
				</tr>
				<tr>
					<td><label>Event Name:</label></td>
					<td><form:input path="eventName" /></td>
					<form:errors path="eventName" cssClass="error"/>
				</tr>
				
				<tr>
					<td><label>Contact number:</label></td>
					<td><form:input path="contact" /></td>
					<form:errors path="contact" cssClass="error"/>
				</tr>
				
				<tr>
					<td><label>Event Location:</label></td>
					<td><form:input path="eventlocation" /></td>
					<form:errors path="eventlocation" cssClass="error"/>
				</tr>
				<tr>
					<td><label>Event Unit:</label></td>
					<td><form:input path="eu" /></td>
					<form:errors path="eu" cssClass="error"/>
				</tr>
				
				<tr>
					<td><label>Event_title:</label></td>
					<td><form:input path="event_title" /></td>
					<form:errors path="event_title" cssClass="error"/>
				</tr>
				<tr>
					<td><label>eventDate:</label></td>
					<td><form:input path="evd" type="date"/></td>
					<form:errors path="evd" cssClass="error"/>
				</tr>
				<tr>
					<td><label>amount:</label></td>
					<td><form:input path="amount" /></td>
					<form:errors path="amount" cssClass="error"/>
				</tr>
				
				<tr>
					<td><input type="submit" value="Save" class="save"></td>
				</tr>
			</tbody>
		</table>
	</form:form>

</body>
</html>
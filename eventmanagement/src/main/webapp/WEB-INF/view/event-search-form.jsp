<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event List-Search By Id</title>
<style>
table{
border-collapse:collapse;
border:3px solid black;

}

</style>
</head>

<body style="background-image:url('file:///C:/Users/V.SRAVANI/eclipse-workspace/eventmanagement/src/main/webapp/WEB-INF/view/image2.jpg')">
<center>
<h1 style="color:pink;"><strong>VISION OF REALITY</strong></h1>
<h1 style="color:Tomato;"><sub><i><marquee><b>Your Vision Our Innovation</b></marquee></i></sub></h1>
<center>
<h3>EVENT LIST-SEARCH BY ID</h3>

<br>
<table border="1" bgclor="white" >
	    <tr>
		    <td>Event_ID</td>
		   <td>Event Name</td>
		   <td>Contact number</td>
		   <td>event_location</td>
		   <td>event_Unit</td>
		   <td>event_title</td>
		   <td>eventDate</td>
	       <td>amount</td>
	       <td>Action</td>
		</tr>
		
		<c:url var="updateLink" value="/event/updateEvent">
				<c:param name="eventId" value="${event.id}"></c:param>
		</c:url>
		<c:url var="deleteLink" value="/event/deleteEvent">
				<c:param name="eventId" value="${event.id}"></c:param>
			</c:url>
			<tr>
				<td>${Events.id}</td>
				<td>${Events.eventName}</td>
				<td>${Events.contact}</td>
				<td>${Events.eventlocation}</td>
				<td>${Events.eu}</td>
				<td>${Events.event_title}</td>
				<td>${Events.evd}</td>
				<td>${Events.amount}</td>
				<td><a href="${updateLink}">Update</a>|
				<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">Delete</a></td>
			</tr>
	
	</table>
	<div>
<input type="button" value="Add Event" onclick="window.location.href='addEvent';return false;" class="add-button"/>
<br><br><br>
</div>
<p>
		<a href="http://localhost:8080/eventmanagement/event/list">Back to Product
			List</a>
	</p>
</body>
</html>
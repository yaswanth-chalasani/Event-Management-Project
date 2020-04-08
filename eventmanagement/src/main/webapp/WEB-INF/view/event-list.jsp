<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event List</title>
<style>
.search{
position:absolute;
top:30%;
left:75%;
}
</style>
</head>
<body style="background-image:url('file:///C:/Users/V.SRAVANI/eclipse-workspace/eventmanagement/src/main/webapp/WEB-INF/view/cloud1.jpg')">

<h1 style="color:white;"><center>Vision Of Reality</center></h1>
<h1 style="color:silver;"><sub><i><marquee><b>Your Vision Our Innovation</b></marquee></i></sub></h1>
<h3>EVENT LIST</h3>
<div>
<input type="button" value="Add Event" onclick="window.location.href='addEvent';return false;" class="add-button"/>
</div>
<div class="search">
<form action="searchEvent">
<label>Search By Id:</label>
<input type="number" name="eventId">
<input type="submit" value="Search" >
</form>
</div>
<br>
<table border="1">

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
		<c:forEach var="tempEvents" items="${events}">
		<c:url var="updateLink" value="/event/updateEvent">
				<c:param name="eventId" value="${tempEvents.id}"></c:param>
		</c:url>
		<c:url var="deleteLink" value="/event/deleteEvent">
				<c:param name="eventId" value="${tempEvents.id}"></c:param>
			</c:url>
			<tr>
				<td>${tempEvents.id}</td>
				<td>${tempEvents.eventName}</td>
				<td>${tempEvents.contact}</td>
				<td>${tempEvents.eventlocation}</td>
				<td>${tempEvents.eu}</td>
				<td>${tempEvents.event_title}</td>
				<td>${tempEvents.evd}</td>
				<td>${tempEvents.amount}</td>
				<td><a href="${updateLink}">Update</a>|
				<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>
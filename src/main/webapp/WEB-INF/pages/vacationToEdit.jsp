<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<mvc:form modelAttribute="familyVacation" action="updateFamilyVacation" method="POST">
	<table>
	    <tr>
			<td><label path="location">Location:</label></td>
	        <td><input path="location" value="${location}" /></td>
	    </tr>
	    <tr>
	        <td><label path="event">Event:</label></td>
	        <td><input path="event" value="${event}" /></td>
	    </tr>
	    <tr>
	        <td><label path="vacationdates">Vacation Dates:</label></td>
	        <td><input path="vacationdates" value="${vacationdates}"/></td>
	    </tr>
	     <tr>
	        <td><label path="cost">Cost:</label></td>
	        <td><input path="cost" value="${cost}"/></td>
	    </tr>
	    <tr>
	        <td><label path="beenthere">Been There:</label></td>
	        <td><input path="beenthere" value="${beenthere}" /></td>
	    </tr>
	    <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
	<a href="form.mvc">Add a new family vacation</a><br />
	<a href="mainMenu.mvc">Back to Menu</a>
</body>
</html>
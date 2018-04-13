<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Vacation Wishlist Form</h2>
<mvc:form modelAttribute="familyvacation" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="location">Location</mvc:label></td>
	        <td><mvc:input path="location" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="event">What do you want to do while there?</mvc:label></td>
	        <td><mvc:input path="event" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="vacationdates">When do you want to go?</mvc:label></td>
	        <td><mvc:input path="vacationdates" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="cost">Cost</mvc:label></td>
            <td><mvc:input path="cost" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Family Vacations</a>
</body>
</html>
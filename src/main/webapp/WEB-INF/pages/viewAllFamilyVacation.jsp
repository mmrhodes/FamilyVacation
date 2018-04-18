<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	background-color: lightgreen;
}


input[type=submit] {
	padding: 5px 15px;
	background: #ccc;
	border: 0 none;
	cursor: pointer;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-size: 21px;
	background-color: #F36C8C;
	font-weight: bold;
	text-shadow: 1px 1px #F36C8C;
	color: #ffffff;
	margin: 15px 15px 15px 55px;
}

a:link {
	color: black;
	font-family: verdana;
	font-size: 125%;
	font-weight: bold;
	margin: 55px 55px 55px 55px;
}

/* visited link */
a:visited {
	color: purple;
}
/* mouse over link */
a:hover {
	color: red;
}
/* selected link */
a:active {
	color: yellow;
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Family Vacations</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
	<mvc:form modelAttribute = "item" action = "/editVacation">
		<table>
			<tr>
				<td>Location</td>
				<td>${item.location}</td>
			</tr>
			<tr>
				<td>Event</td>
				<td>${item.event}</td>
			</tr>
			<tr>
				<td>Vacation Dates</td>
				<td>${item.vacationdates}</td>
			</tr>
			<tr>
				<td>Cost</td>
				<td>${item.cost}</td>
			</tr>
			<tr>
				<td colspan = "2">
				<input type = "submit" value = "Edit"/></td>
			</tr>
<!-- 			<tr> -->
<!-- 				<td>Have I been there?</td> -->
<%-- 				<td>${item.beenthere}</td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>Who went</td> -->
<%-- 				<td>${item.whowent_id}</td> --%>
<!-- 			</tr> -->
			
		</table>
		</mvc:form>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new family vacation</a><br />
	<a href="mainMenu.mvc">Back to Menu</a>
</body>
</html>
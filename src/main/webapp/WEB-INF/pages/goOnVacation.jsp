<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${all}" var="vacation">
	<mvc:form modelAttribute = "item" action = "plotVacation.mvc" method = "post">
		<table>
			<td><input type="radio" name="id" value="${vacation.id}"></td>
			<tr>
				<td>Location: </td>
				<td>${vacation.location}</td>
			</tr>
			<tr>
				<td>Vacation Dates: </td>
				<td>${vacation.vacationdates}</td>
			</tr>
			<tr>
				<td colspan = "2">
				<input name="itemid" type="hidden" value="${item.id}">
				<input name="vacationid" type="hidden" value="${vacation.id}">
				<input type = "submit" value = "Go party"/></td>
			</tr>
			
		</table>
		</mvc:form>
</c:forEach>		
</body>
</html>
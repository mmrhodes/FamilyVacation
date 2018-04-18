<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	margin: 100px 100px 100px 250px;
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
<title>Main Menu</title>
</head>
<body>
<a href = "personForm.mvc">Add a family member</a><br />
<a href = "form.mvc">Add a vacation</a><br />
<a href = "viewAllPeople.mvc">View all family members</a><br />
<a href = "viewAll.mvc">View all vacation spots</a><br />
<img src="BoraBora.jpg"><br />
<img src="Denver.jpg">
</body>
</html>
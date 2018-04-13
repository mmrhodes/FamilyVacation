<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Family Vacation List</h2>
    <table>
        <tr>
            <td>Location</td>
            <td>${f.location}</td>
        </tr>
        <tr>
            <td>Event</td>
            <td>${f.event}</td>
        </tr>
        <tr>
            <td>When</td>
            <td>${f.vacationdates}</td>
        </tr>
        <tr>
            <td>Cost</td>
            <td>${f.cost}</td>
        </tr>      
        <tr>
            <td>I have been there</td>
            <td>${f.beenthere}</td>
        </tr>
          <tr>
            <td>Who went</td>
            <td>${f.whowent}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Vacations</a>
</body>
</html>
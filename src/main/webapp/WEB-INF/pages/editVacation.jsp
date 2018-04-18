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
<title>Show that I went on this vacation</title>
</head>
<body>
<form action="editVacation" method="post">
Location: <input type = "text" name = "location" value = "${itemToEdit.location}"><br />

Event: <input type = "text" name = "event" value = "${itemToEdit.event}"><br />

Vacation Dates: <input type = "text" name = "vacationdates" value = "${itemToEdit.vacationdates}"><br />

Cost: <input type = "text" name = "cost" value = "${itemToEdit.cost}"><br />

<label for="beenthere">I have been there:</label>
<select name = "AnimalEggs">
	<option value=0 ${itemToEdit.beenthere==false ? "selected" : ""}>false</option>
	<option value=1 ${itemToEdit.beenthere==true ? "selected" : ""}>true</option>
</select><br />

<label for="AnimalDiet">Diet:</label>
<select name="AnimalDiet">
  <c:forEach items="${requestScope.allDiets}" var="currentitem">
			
			<option value="${currentitem.diet}" ${itemToEdit.diet == currentitem.diet ? "selected":""}>${currentitem.diet}</option>
		</c:forEach>
</select><br />

<label for="AnimalNocturnal">Nocturnal:</label>
<select name = "AnimalNocturnal">
	<option value=0 ${itemToEdit.nocturnal==false ? "selected" : ""}>false</option>
	<option value=1 ${itemToEdit.nocturnal==true ? "selected" : ""}>true</option>
</select><br />

<label>Gender:</label>
				<select name="AnimalGender">			
					<c:forEach items="${requestScope.allGenders}" var="currentitem">
						<option value="${currentitem.gender}" ${itemToEdit.gender == currentitem.gender ? "selected":""}>${currentitem.gender}</option>
					</c:forEach>
				</select>  <br />
				
<label for="AnimalEggs">Lays Eggs:</label>
<select name = "AnimalEggs">
	<option value=0 ${itemToEdit.laysEggs==false ? "selected" : ""}>false</option>
	<option value=1 ${itemToEdit.laysEggs==true ? "selected" : ""}>true</option>
</select><br />

<label for="AnimalZoo">Zoo:</label>
<select name="AnimalZoo">
  <c:forEach items="${requestScope.allZoos}" var="currentitem">
			<option value="${currentitem.ID}" ${itemToEdit.zoo_id.ID == currentitem.ID ? "selected":""}>${currentitem.name}</option>
		</c:forEach>
</select><br />
<c:choose>
		<c:when test="${itemToEdit.animal_id == 1}">
			Number of Legs: <input type = "text" name = "AnimalLegs" value = "${itemToEdit.numOfLegs}"><br />

			<label for="AnimalBipedal">Bipedal:</label>
			<select name = "AnimalBipedal">
				<option value=0 ${itemToEdit.bipedal==false ? "selected" : ""}>false</option>
				<option value=1 ${itemToEdit.bipedal==true ? "selected" : ""}>true</option>
			</select><br />

			<label for="AnimalFur">Fur:</label>
			<select name = "AnimalFur">
				<option value=0 ${itemToEdit.hasFur==false ? "selected" : ""}>false</option>
				<option value=1 ${itemToEdit.hasFur==true ? "selected" : ""}>true</option>
			</select><br />
		</c:when>
		<c:otherwise>
			<label for="AnimalLegs">Legs:</label>
			<select name = "AnimalLegs">
				<option value=0 ${itemToEdit.hasLegs==false ? "selected" : ""}>false</option>
				<option value=1 ${itemToEdit.hasLegs==true ? "selected" : ""}>true</option>
			</select><br />

			<label for="AnimalPoisonous">Poisonous:</label>
			<select name = "AnimalPoisonous">
				<option value=0 ${itemToEdit.venomous==false ? "selected" : ""}>false</option>
				<option value=1 ${itemToEdit.venomous==true ? "selected" : ""}>true</option>
			</select><br />

			<label for="AnimalSkin">Skin:</label>
			<select name="AnimalSkin">
  				<c:forEach items="${requestScope.allSkins}" var="currentitem">
					<option value="${currentitem.skin}">${currentitem.skin}</option>
				</c:forEach>
			</select><br />
		</c:otherwise>
</c:choose>
<input type = "hidden" name = "id" value="${itemToEdit.ID}">
<input type="hidden" name="AnimalType" value="${itemToEdit.animal_id}">
<input type = "submit" value = "Save Edited Item">
</form>
</body>
</html>
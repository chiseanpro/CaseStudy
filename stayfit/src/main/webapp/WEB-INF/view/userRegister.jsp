<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	
<title>User Registration Page</title>
<meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginstyle.css">
	<style>
		body {
  		background-image: url('${pageContext.request.contextPath}/resources/images/login-backgroup.jpg');
  		background-repeat: no-repeat;
  		background-size: 100%;
		}
	</style>
</head>

<body>
	<div class="wrapper fadeInDown">
    <div id="formContent">
    <h2 class="active"> User Registration </h2>
	<form:form id="registrationForm" modelAttribute="user" action="userRegistrateProcess"
		method="post">

		<table align="center">
			<tr>
				<td><label>Username:</label></td>
				<td><form:input path="username" name="username" id="username" /></td>
			</tr>
			<tr>
				<td><label>Password:<label></td>
				<td><form:input path="password" name="password" id="password" /></td>
			</tr>
			<tr>
				<td><label>First Name:<label></td>
				<td><form:input path="firstName" name="firstName" id="firstName" /></td>
			</tr>
			<tr>
				<td><label>Last Name:</label></td>
				<td><form:input path="lastName" name="lastName" id="lastName" /></td>
			</tr>
			<tr>
				<td><label>Email:</label></td>
				<td><form:input path="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><label>Phone:</label></td>
				<td><form:input path="phoneNumber" name="phoneNumber" id="phoneNumber" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" class="fadeIn fourth" value="Registration"></td>
			</tr>
		</table>
	</form:form>
    </div>
  </div>
</body>
</html>
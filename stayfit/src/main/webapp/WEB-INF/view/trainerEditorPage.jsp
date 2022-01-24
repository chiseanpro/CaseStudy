<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Information Manager</title>
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
    <h2 class="active"> Trainer Data Manager </h2>
		<form:form action="editTrainer" modelAttribute="trainer" method="POST">
		
			<form:hidden path="id"/>
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td><label>Course:</label></td>
						<td><form:input path="course" /></td>
					</tr>
					<tr>
						<td><label>Video:</label></td>
						<td><form:input path="video" /></td>
					</tr>
					<tr>
						<td><label>Description:</label></td>
						<td><form:input path="description" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
				</tbody>
			</table>	
		</form:form>	
		<div style="clear:both;"></div>		
		<p>
			<a href="${pageContext.request.contextPath}/trainer/trainerList">Back to Trainer Information List</a>
		</p>	
	</div>
	</div>
</body>
</html>
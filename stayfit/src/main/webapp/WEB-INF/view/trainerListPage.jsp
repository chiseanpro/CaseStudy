<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
	<title>Trainer List</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginstyle.css">
	<style>
		body {
  		background-image: url('${pageContext.request.contextPath}/resources//images/login-backgroup.jpg');
  		background-repeat: no-repeat;
  		background-size: 100%;
		}
		h2 {color:Black;}
		
	</style>
</head>
<body>

<div class="wrapper fadeInDown">
    <div id="formContent">
    <h2 class="active"> Trainer Infromation List </h2>
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Course</th>
				</tr>
				
				<c:forEach var="tempTrainer" items="${trainers}">

					<c:url var ="updateLink" value="/trainer/updateTrainerInfo">
						<c:param name="trainerId" value="${tempTrainer.id}" />
					</c:url>

					<c:url var ="deleteLink" value="/trainer/deleteTrainer">
						<c:param name="trainerId" value="${tempTrainer.id}" />
					</c:url>	

					<tr>
						<td><h2>${tempTrainer.firstName}<h2></td>
						<td><h2>${tempTrainer.lastName}<h2></td>
						<td><h2>${tempTrainer.email}<h2></td>
						<td><h2>${tempTrainer.course}<h2></td>
						<td><input type="button" value="EDIT" onclick="window.location.href='${updateLink}'; return false;">
						<td><input type="button" value="DELETE" onclick="window.location.href='${deleteLink}'; return false;">	
					</tr>					
						
				</c:forEach>
			</table>
			
			<input type="button" value ="Add Trainer" class="button" onclick="window.location.href='addTrainerPage'; return false;">
			
		</div>
	</div>
	
</body>
</html>

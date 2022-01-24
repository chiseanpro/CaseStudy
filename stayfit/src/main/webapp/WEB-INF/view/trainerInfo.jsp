<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
	<title>Trainer List</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginstyle.css">
	<style>
		body {
  		background-image: url('${pageContext.request.contextPath}/resources/images/home-background.jpg');
  		background-repeat: no-repeat;
  		background-size: 100%;
		}
		h2 {color:Black;}
		
	</style>
</head>
<body>

<div class="wrapper fadeInDown">
    <div id="formContent">
    <h2 class="active"> Trainer Contact Information </h2>
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Course</th>
				</tr>
				
				<c:forEach var="tempTrainer" items="${trainers}">

					<tr>
						<td><h2>${tempTrainer.firstName}<h2></td>
						<td><h2>${tempTrainer.lastName}<h2></td>
						<td><h2>${tempTrainer.email}<h2></td>
						<td><h2>${tempTrainer.course}<h2></td>
					</tr>					
						
				</c:forEach>
			</table>
			
		</div>
	</div>
	
</body>
</html>
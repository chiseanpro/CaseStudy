<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
	<title>Trainer List</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginstyle.css">
	<style>

		h2 {color:Black;}

	</style>
</head>
<body>

<div class="wrapper">
    <div id="formContent">
    <h2 class="active"> Training Videos </h2>
			<table>
				
				<c:forEach var="tempTrainer" items="${trainers}">

					<tr>
						<td><h2>${tempTrainer.firstName} ${tempTrainer.lastName}:<h2></td>
						<td><iframe width="420" height="345" src="${tempTrainer.video}"></iframe></td>
					</tr>					
						
				</c:forEach>
			</table>
			
		</div>
	</div>
	
</body>
</html>
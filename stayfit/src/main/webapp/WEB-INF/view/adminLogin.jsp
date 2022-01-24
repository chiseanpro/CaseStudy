<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

	<title>StayFit Login Page</title>
	
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginstyle.css">
	<style>
		.failed {
			color: red;
		}

		body {
  		background-image: url('${pageContext.request.contextPath}/resources//images/login-backgroup.jpg');
  		background-repeat: no-repeat;
  		background-size: 100%;
		}

	</style>
</head>

<body>
  <div class="wrapper fadeInDown">
    <div id="formContent">
      <!-- Tabs Titles -->
      <h2 class="active"> Admin Login </h2>


	<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
			   method="POST">
	
		<!-- Check for login error -->
	
		<c:if test="${param.error != null}">
		
			<i class="failed">Sorry! You entered invalid username or password.</i>
			
		</c:if>
			
        <input type="text" id="login" class="fadeIn second" name="username" placeholder="username">
        <input type="text" id="password" class="fadeIn third" name="password" placeholder="password">
		
		<input type="submit" value="Login" />
		
	</form:form>
    </div>
  </div>
</body>

</html>
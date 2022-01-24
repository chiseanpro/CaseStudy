<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
 <head>
 
  	<title>User Login Page</title>
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
    <h2 class="active"> User Login </h2>
		<form:form id="loginForm" modelAttribute="user" action="userloginProcess"
		method="post">
			<form:input path="username" id="login" class="fadeIn second" name="login" placeholder="username"/>
			<form:input path="password" id="password" class="fadeIn third" name="login" placeholder="password"/>
			<input type="submit" class="fadeIn fourth" value="Log In">
	</form:form>
      <div id="formFooter">
        <a class="underlineHover" href="${pageContext.request.contextPath}/user/showRegistrate">Dont't Have An Account?</a>
      </div>
    </div>
  </div>
</body>
</html>
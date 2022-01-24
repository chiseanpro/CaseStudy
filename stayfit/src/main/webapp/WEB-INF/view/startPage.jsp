<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
 <head>
 
  	<title>Login 10</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginstyle.css">
	<style>
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
    <h2 class="active"> Who Are You? </h2>
    <p>
		<a href="${pageContext.request.contextPath}/user/showUserLogin"><h2>User</h2></a>
	</p>
	
	<p>
		<a href="${pageContext.request.contextPath}/trainer/trainerList"><h2>Admin</h2></a>
	</p>
	
	</div>
	</div>
</body>
</html>
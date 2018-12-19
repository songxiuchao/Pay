<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head dir="ltr" lang="en-US">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>PayLogin</title>
	<!---CSS--->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/static/style.css" type="text/css" />
</head>
	<body>
		<div id="container">
			<form action="<%=request.getContextPath() %>/user/loginAction.action" method="post">
				<div class="login">LOGIN</div>
				<div class="username-text">Username:</div>
				<div class="password-text">Password:</div>
				<div class="username-field">
					<input type="text" name="username" value="json" />
				</div>
				<div class="password-field">
					<input type="password" name="password" value="123" />
				</div>
				<input type="checkbox" name="remember-me" id="remember-me" />
				<label for="remember-me">Remember me</label>
				<div class="forgot-usr-pwd">Forgot 
					<a href="#">username</a> or 
					<a href="#">password</a>?
				</div>
				<input type="submit" name="submit" value="GO" />
			</form>
		</div>
		<div id="footer">
			<span>welcome</span>
		</div>
	</body>
</html>
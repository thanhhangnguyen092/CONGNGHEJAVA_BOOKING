<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Space Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->

<!-- css files -->
<link href="resources/css/dangnhap.css" rel="stylesheet" type="text/css" media="all" />
<!-- css files -->


</head>
<body>
	<!-- main -->
	<div class="main">
		<div class="main-w3l">
			<h1 class="logo-w3">Login Form</h1>
			<div class="w3layouts-main">
					<form action="" method="post">
						<input placeholder="Username or Email" name="Email" type="text"/>
						<input placeholder="Password" name="Password" type="password"/>
						<font color="red">${error}</font>
						<input type="submit" value="Get Started" name="login">
					</form>
					<h6> <a href="SignUp"> Do not have an account? </a></h6>
					
			</div>
			<!-- //main -->
			
			<!--footer-->
			<div class="footer-w3l">
				<p></p>
			</div>
			<!--//footer-->
		</div>
	</div>
</body>
</html>
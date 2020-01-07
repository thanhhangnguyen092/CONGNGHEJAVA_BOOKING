<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign Up</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="resources/css/font.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/dangky.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css -->
</head>
<body>

<meta name="robots" content="noindex">
<body>

<h1 class="w3ls">Sign Up</h1>
<!---728x90--->
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">SIGN UP</h2>
		<p class="agileits2">WELCOM TO MY CINEMA.</p>
	</div>
	<div class="content-agile2">
		<form action="" method="post">
			
			<div class="form-control w3layouts">	
				<input type="text" id="email" name="hoten" placeholder="Họ tên" title="Nhập họ tên" required="">
			</div>
			<div class="form-control w3layouts">	
				<input type="text" id="email" name="diachi" placeholder="Địa chỉ" title="Nhập địa chỉ" required="">
			</div>
			
			<div class="form-control w3layouts">	
				<input type="text" id="email" name="sdt" placeholder="Số điện thoại" title="Nhập số điện thoại" required="">
			</div>
			
			<div class="form-control w3layouts"> 
				<input type="text" id="firstname" name="tentruycap" placeholder="Tên truy cập" title="Nhập tên truy cập" required="">
			</div>
			
			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="matkhau" placeholder="Mật khẩu" id="password1" required="">
			</div>
			
			
			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="nhaplaimatkhau" placeholder="Nhập lại mật khẩu" id="password2" required="">
			</div>
			<div>
				<input name="maKH" type="hidden" class="form-control" id="exampleInputEmail1" readonly="readonly" value="${maKH}">			
			</div>
			<font color="red">${error}</font>
			<input type="submit" class="register" value="Register">
		</form>
		
		<p class="wthree w3l">Do you already have an account?</p>
		<ul class="social-agileinfo wthree2">
			<li><a href="LogIn"> LOG IN</a></li>
		</ul>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>
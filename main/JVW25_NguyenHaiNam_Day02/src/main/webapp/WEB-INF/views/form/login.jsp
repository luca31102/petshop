<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- directive của JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Glassy Login Form A Responsive Widget Template ::
	w3layouts</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Glassy Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="${classpath}/form/./css/font-awesome.css">
<!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="${classpath}/form/./css/login-style.css">
<!-- Style-CSS -->
<!-- //css files -->
<!-- web-fonts -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700"
	rel="stylesheet">
<!-- //web-fonts -->
</head>
<body>
	<!--header-->
	<div class="header-w3l">
		<h1>Glassy Login Form</h1>
	</div>
	<!--//header-->
	<!--main-->
	<div class="main-w3layouts-agileinfo">
		<!--form-stars-here-->
		<div class="wthree-form">
			<h2>Fill out the form below to login</h2>
			<form action="${classpath }/login_processing_url" method="post">
				<div class="form-sub-w3">
					<input type="text" name="username" id="username"
						placeholder="Username " required="" />
					<div class="icon-w3">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
				</div>
				<div class="form-sub-w3">
					<input type="password" name="password" id="password"
						placeholder="Password" required="" />
					<div class="icon-w3">
						<i class="fa fa-unlock-alt" aria-hidden="true"></i>
					</div>
				</div>
				<label class="anim"> <input type="checkbox" class="checkbox">
					<span>Remember Me</span> <a href="#">Forgot Password</a>
				</label>
				<div class="clear"></div>
				<div class="submit-agileits">
					<input type="submit" value="Login">
				</div>
				
				<div class="submit-agileits">
					<a href="${classpath }/signup" style="color: #fff">Sign Up</a>
				</div>
				<c:if test="${not empty param.login_error }">
					<div class="alert alert-danger" role="alert">Login attempt
						was not successful, try again!!!</div>
				</c:if>
			</form>

		</div>
		<!--//form-ends-here-->

	</div>
	<!--//main-->
	<!--footer-->
	<div class="footer">
		<p>
			&copy; 2017 Glassy Login Form. All rights reserved | Design by <a
				href="http://w3layouts.com">W3layouts</a>
		</p>
	</div>
	<!--//footer-->
</body>
</html>
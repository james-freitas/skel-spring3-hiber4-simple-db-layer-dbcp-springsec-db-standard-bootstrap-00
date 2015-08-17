<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<title>Login Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>">
	<link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet" />
	<link href="<c:url value='/resources/css/complementar.css' />" rel="stylesheet" />

			 
<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
	      <script src="js/vendor/html5shiv.js"></script>
	      <script src="js/vendor/respond.min.js"></script>
	    <![endif]-->

</head>

<body onload='document.f.j_username.focus();'>
	<div id="wrap">

		<!-- Static navbar -->
		<div class="navbar navbar-inverse navbar-default navbar-static-top"
			role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
					</button>
					<a class="navbar-brand" href="#">Nexter</a>
				</div>
			</div>
		</div>


		<div class="container">

			<div class="page-header">
				<h3>Please log in</h3>
			</div>


			<c:if test="${not empty error}">
				<p class="bg-danger loginError">
					Wrong username or password.<br /> Caused:
					${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
				</p>
				<p>
			</c:if>


			<form class="form-horizontal" name='f'
				action='${pageContext.request.contextPath}/j_spring_security_check'
				method='POST'>
				<div class="form-group">
					<label for="login-name" class="col-sm-2 control-label">Email</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="login-name"
							name='j_username' placeholder="Enter your Email here">
					</div>
				</div>
				<div class="form-group">
					<label for="login-pass" class="col-sm-2 control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="login-pass"
							name='j_password' placeholder="Enter your Password here">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<a href="#">Lost your password?</a>
						
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button name="submit" type="submit"
							class="btn btn-primary btn-lg btn-block">Login</button>
					</div>
				</div>
			</form>

		</div>
		<div id="push"></div>
	</div>
	<!-- wrap -->

	<div id="footer">
		<div class="container">
			<p class="muted credit">
				Copyright &nbsp;&copy;&nbsp; 2015 &nbsp;<a
					href="http://codeonblue.com.br"> Code on Blue</a>
			</p>
		</div>
	</div>

	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<!-- jQuery (necessary for Flat UI's JavaScript plugins) -->
	

	<script
		src="<c:url value='/resources/js/bootstrap.min.js' />">
	</script>

</body>
</html>

<!DOCTYPE html>
<html>
<head>
<title>Registation Form * Form Tutorial</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">Registation Form - Input User's Detail
					Information</h2>
			</div>
			<form action="/register" method="post">
				<div class="panel-body">
					<div class="form-group">
						<label for="username">Name:</label> <input type="text"
							class="form-control" name="username" id="username">
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" name="email" id="email">
					</div>
					<div class="form-group">
						<label for="password">Password:</label> <input
							type="password" class="form-control" name="password"
							id="password">
					</div>

					<div class="form-group">
						<label for="mobile">Phone:</label> <input type="text"
							class="form-control" name="mobile" id="mobile">
					</div>
 					<div class="form-group">
						<label for="confirmation_pwd">Confirmation Password:</label> <input
							type="password" class="form-control" name="password"
							id="password">
					</div> 
					<input type="submit" value="Register">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
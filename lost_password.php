<?php
session_start();
?>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--link to CSS file-->
	<link rel="stylesheet" href="css/style.css">
	<title>HC&K lost password page</title>
</head>

<body>
	<div class="wrapper">


		<!--header, navbar-->
		<?php include('blocks/header.php'); ?>

		<div class="main__container">
			<div class="main__container_forms password_form">
				<h1>Lost Password?</h1>
				<p>Please insert your email</p>
				<form action="send_email.php" method="post">
					<input type="hidden" name="emailType" value="lostPassword">
					<input type="email" name="email" id="email" required placeholder="enter your email">
					<br>
					<input type="submit" id="btn" value="Submit">
				</form>
				<br>
				<a href="logout.php">Logout</a>
			</div>
		</div>

		<!--footer-->
		<?php include('blocks/footer.php'); ?>



		<!--jquery link-->
		<script src="https://code.jquery.com/jquery-3.6.4.slim.min.js"></script>
		<!--js connection-->
		<script src="js/script.js"></script>
	</div>
</body>

</html>
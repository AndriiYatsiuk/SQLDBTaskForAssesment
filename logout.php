<?php
session_start();
session_unset();
session_destroy();
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--link to CSS file-->
	<link rel="stylesheet" href="css/style.css">
	<title>HC&K logout page</title>
</head>

<body>
	<div class="wrapper">


		<!--header, navbar-->
		<?php include('blocks/header.php'); ?>

		<div class="main__container">
			<div class="main__container_forms logout_form">
				<h1>Logout</h1>
				<p>Logout successful.</p>
				<br>
				<a href="index.php">Return to main page</a>
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
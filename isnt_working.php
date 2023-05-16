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
	<title>HC&K not working page</title>
</head>

<body>
	<div class="wrapper">


		<!--header, navbar-->
		<?php include('blocks/header.php'); ?>

		<div class="main__container">
			<div class="main__container_forms notwork_form">
				<h1>So your computer is not working? <br> Try next:</h1>
				<p><img src="https://i.gifer.com/g0bL.gif" alt="GIF of a computer not working"></p>
				<br>
				<a href="logout.php">Logout</a>
			</div>
		</div>


		<!--footer-->
		<?php include('blocks/footer.php'); ?>



		<!--jquery link-->
		<script src="./img/admin.jpg"></script>
		<!--js connection-->
		<script src="js/script.js"></script>
	</div>
</body>

</html>
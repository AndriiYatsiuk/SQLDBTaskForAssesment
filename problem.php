<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$_SESSION["role"] = $_POST["role"];
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--link to CSS file-->
	<link rel="stylesheet" href="css/style.css">
	<title>HC&K Problem page</title>
</head>

<body>
	<div class="wrapper">


		<!--header, navbar-->
		<?php include('blocks/header.php'); ?>


		<div class="main__container">
			<div class="main__container_forms problems_form">
				<h1>Hello, what would you like to do today? </h1>
				<?php
				if ($_SESSION["role"] == "admin") {
					echo '<a class="btn" href="new_account.php">Create New Account</a><br>';
					echo '<a class="btn" href="isnt_working.php">My PC Not Working</a><br>';
				} elseif ($_SESSION["role"] == "manager") {
					echo '<a class="btn" href="lost_password.php">Lost Password</a><br>';
					echo '<a class="btn" href="isnt_working.php">PC Not Working</a><br>';
				} elseif ($_SESSION["role"] == "ceo") {
					echo '<a class="btn" href="need_help.php">Need Help</a><br>';
					echo '<a class="btn" href="isnt_working.php">PC Not Working</a><br>';
				} elseif ($_SESSION["role"] == "user") {
					echo '<a class="btn" href="admin-add.php">Add Your Adventure</a><br>';
				}

				?>
				<br>
				<a class="btn" href="logout.php">Logout</a>
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
<?php
include 'vendor/connect.php';

session_start();

if ($_SESSION['admin']) {
	header('Location: admin-add.php');
} elseif ($_SESSION['user']) {
	header('Location: user-add.php');
}


error_reporting(E_ALL);
ini_set('display_errors', 1);


?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--link to CSS file-->
	<link rel="stylesheet" href="css/style.css">
	<title>HC&K new user account page</title>
</head>

<body>
	<div class="wrapper">


		<!--header, navbar-->
		<?php include('blocks/header.php'); ?>


		<div class="main__container">
			<div class="account_form">
				<form action="vendor/signup.php" method="post" enctype="multipart/form-data">
					<h3>create new account</h3>
					<input type="text" name="name" required placeholder="enter your first name">
					<input type="text" name="lstname" required placeholder="enter your last name">
					<input type="text" name="username" required placeholder="enter your username">
					<input type="email" name="email" required placeholder="enter your email">
					<input type="password" name="password" required placeholder="enter your password">
					<input type="password" name="confpassword" required placeholder="confirm your password">

					<?php
					if (isset($_SESSION['message'])) {
						echo '<p class="notemsg">' . $_SESSION['message'] . '</p>';
						unset($_SESSION['message']);
					}
					unset($_SESSION['message']);
					?>

					<input type="file" name="avatar">
					<select name="role" id="role">
						<option value="admin">admin</option>
						<option value="user">user</option>
					</select>
					<input type="submit" name="submit" value="create new account" class="form-btn">
					<p>already have an account? <a href="signin-form.php"> login now</a></p>
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
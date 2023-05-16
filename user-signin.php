<?php
session_start();
include 'vendor/connect.php';
if ($_SESSION['user']) {
	header('Location: admin-add.php');
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
	<title>HC&K user login page</title>
</head>

<body>
	<div class="wrapper">


		<!--header, navbar-->
		<?php include('blocks/header.php'); ?>

		<div class="main__container">
			<div class="user-loginform">

				<form action="vendor/signin.php" method="post">

					<?php
					if ($_SESSION['message']) {
						echo '<p class="regmsg">' . $_SESSION['message'] . '</p>';
					}
					unset($_SESSION['message']);
					if ($_SESSION['message2']) {
						echo '<p class="notemsg">' . $_SESSION['message2'] . '</p>';
					}
					unset($_SESSION['message2']);
					?>
					<h3>Please enter your name and password</h3>
					<input type="text" name="username" required placeholder="Username">
					<input type="password" name="password" required placeholder="Password">
					<input type="submit" name="login" value="login" class="form-btn">
					<a href="new_user_account.php">Still not registered?</a>
					<a href="logout.php">Logout</a>

				</form>

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
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
	<title>HC&K login page</title>
</head>

<body>
	<div class="wrapper">


		<!--header, navbar-->
		<?php include('blocks/header.php'); ?>

		<div class="main__container">
			<div class="main__container_forms login_form">
				<form action="problem.php" method="post">
					<h3>welcome to your it support system</h3>
					<select name="gender" class="form_gender">
						<option value="mr">Mr.</option>
						<option value="mrs"> Mrs.</option>
						<option value="ms">Ms.</option>
						<option value="miss">Miss</option>
						<option value="prefer_not_to_answer">Perfer not to Answer</option>
					</select>
					<input type="text" name="first_name" required placeholder="First Name">
					<input type="text" name="last_name" required placeholder="Last Name">
					<label for="role"></label>
					<select name="role" id="role">
						<option value="admin">Admin</option>
						<option value="manager">Manager</option>
						<option value="ceo">CEO</option>
						<option value="user">User</option>
					</select>
					<input type="submit" name="submit" value="submit" class="form-btn">
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
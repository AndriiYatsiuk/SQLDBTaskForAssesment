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
	<title>HC&K send email page</title>
</head>

<body>
	<div class="wrapper">


		<!--header, navbar-->
		<?php include('blocks/header.php'); ?>

		<div class="main__container">
			<div class="main__container_forms sendemail_form">
				<div class="login_form-msg">
					<?php
					if ($_SERVER["REQUEST_METHOD"] == "POST") {
						$emailType = $_POST["emailType"];
						$email = $_POST["email"];

						if ($emailType == "newAccount") {
							echo "New account email sent to $email";
						} elseif ($emailType == "lostPassword") {
							echo "Lost password email sent to $email";
						}
					}
					?>
				</div>
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
<?php
session_start();
if (!$_SESSION['admin']) {
	header('Location: index.php');
	exit();
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
	<link rel="stylesheet" href="./css/style.css">
	<title>Halifax Canoe and Kayak</title>
</head>

<body>
	<div class="wrapper">



		<!--header, navbar-->
		<?php include('blocks/header.php'); ?>


		<!--main content text-->
		<div class="main__container">
			<div class="userfile">
				<img src="<?= $_SESSION['admin']['avatar'] ?>" width="100vw" alt="">
				<h2><?= $_SESSION['admin']['name'] ?></h2>
				<h2><?= $_SESSION['admin']['lstname'] ?></h2>
				<a href="#"><?= $_SESSION['admin']['email'] ?></a>
				<br>
				<a href="vendor/signout.php">Signout</a>
			</div>
			<div class="adventure-form">
				<form action="vendor/admin-confirm.php" method="post" enctype="multipart/form-data">
					<h3> Admin - Add Adventure</h3>
					<?php
					if (isset($_SESSION['message'])) {
						echo '<p class="notemsg">' . $_SESSION['message'] . '</p>';
					}
					unset($_SESSION['message']);
					?>
					<p>Heading</p>
					<input type="text" name="heading" required placeholder=" Trip Direction">
					<p>Trip Start Date</p>
					<input type="date" name="date">
					<p>Duration</p>
					<input type="text" name="duration" required placeholder="trip duration number in days">
					<p>Picture</p>
					<input type="file" name="image">
					<p>Summary</p>
					<textarea name="summary" id="textar" cols="64" rows="20" required placeholder="Short discription of the next adventure"></textarea>
					<input type="submit" name="submit" value="Submit" class="form-btn">
				</form>
				<br>
				<a href="logout.php">Logout</a>
			</div>
		</div>



		<!--footer-->
		<?php include('blocks/footer.php'); ?>
	</div>


	<!--jquery link-->
	<script src="https://code.jquery.com/jquery-3.6.4.slim.min.js"></script>
	<!--js connection-->
	<script src="js/script.js"></script>
</body>

</html>
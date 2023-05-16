<?php
session_start();
if (!$_SESSION['user']) {
	header('Location: index.php');
}
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
				<img src="<?= $_SESSION['user']['avatar'] ?>" width="100vw" alt="">
				<h2><?= $_SESSION['user']['name'] ?></h2>
				<h2><?= $_SESSION['user']['lstname'] ?></h2>
				<a href="#"><?= $_SESSION['user']['email'] ?></a>
				<br>
				<a href="vendor/signout.php">Signout</a>
			</div>
			<div class="adventure-form">
				<form action="vendor/admin-confirm.php" method="post" enctype="multipart/form-data">
					<h3>Admin - Add Adventure</h3>
					<?php
					if ($_SESSION['message']) {
						echo '<p class="notemsg">' . $_SESSION['message'] . '</p>';
					}
					unset($_SESSION['message']);
					?>
					<p>Heading</p>
					<input type="text" name="heading" required placeholder="Tell us the Trip Direction (for examle: 'Truro down the Stewiake River')">
					<p>Trip Start Date</p>
					<input type="date" name="date">
					<p>Duration</p>
					<input type="text" name="duration" required placeholder="How long was your trip? (write number of days)">
					<p>Add Your Adventure Pictures</p>
					<input type="file" name="image">
					<p>Summary</p>
					<textarea name="summary" id="textar" cols="64" rows="20" required placeholder="Tell us about your adventure. We want to know everything :)"></textarea>
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
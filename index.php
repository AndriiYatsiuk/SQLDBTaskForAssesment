<?php
session_start();
include 'vendor/connect.php';


// Retrieve all adventure entries from the database
$query = "SELECT * FROM `next_adventures`";
$result = mysqli_query($connect, $query);

// Check existing adventures
if (mysqli_num_rows($result) > 0) {
	$adventure = [];

	// add adventure to the array
	while ($row = mysqli_fetch_assoc($result)) {
		$adventure[] = [
			"id" => $row['id'],
			"heading" => $row['heading'],
			"date" => $row['date'],
			"duration" => $row['duration'],
			"summary" => $row['summary'],
			"avatar" => $row['avatar'],

		];
	}

	$_SESSION['adventure'] = $adventure;
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


		<!--main picture, content text-->
		<div class="content">
			<div class="content__picture">
				<div class="content__picture-img">
					<img src="./img/canoe.jpg" alt="canoe picture">
				</div>
				<div class="content__picture-text">Come Expirence Canada</div>
			</div>
			<div class="container">
				<div class="content__text">
					<div class="title">Upcoming Adventures</div>
					<div class="line"></div>

					<div class="main__container adv-container">
						<div class="adv-content">
							<h2>All Our Adventures</h2>
							<?php
							if (isset($_SESSION['adventure'])) {
								$adventure = $_SESSION['adventure'];
								foreach ($_SESSION['adventure'] as $adventure) {
									echo '<div class="adv-block">';
									echo '<img src="' . $adventure['avatar'] . '" width="500vw" alt="">';
									echo '<h3> ' . $adventure['heading'] . '</h3>';
									echo '<p>Date: ' . $adventure['date'] . '</p>';
									echo '<p>Duration: ' . $adventure['duration'] . ' days</p>';
									echo '<p> ' . $adventure['summary'] . '</p>';
									echo '</div>';
								}
							} else {
								echo "No adventures found.";
							}
							?>
						</div>
					</div>


				</div>
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
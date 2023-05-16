<?php
session_start();
include 'connect.php';


// Retrieve all adventure entries from the database
$query = "SELECT * FROM `adventure`";
$result = mysqli_query($connect, $query);

// Check if any adventure exist
if (mysqli_num_rows($result) > 0) {
	// Initialize an array to store all adventure entries
	$adventure = [];

	// Fetch each adventure and add it to the adventure array
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

	// Store the adventure array in the session
	$_SESSION['adventure'] = $adventure;


	// Store the adventure array as a serialized cookie
	setcookie('adventure_data', serialize($adventure), time() + 3600, '/');

	// Redirect to all-adventures.php
	header('Location: ../all-adventures.php');
	exit;
} else {
	echo "No adventures found.";
}

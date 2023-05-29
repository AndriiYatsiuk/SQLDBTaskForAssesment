<?php
session_start();
include 'connect.php';

error_reporting(E_ALL);
ini_set('display_errors', 1);

if (!isset($_SESSION['user'])) {
	header('Location: index.php');
	exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	$heading = $_POST['heading'];
	$date = $_POST['date'];
	$duration = $_POST['duration'];
	$summary = $_POST['summary'];

	if ($_FILES['image']['error'] === 0) {
		$path = 'uploads/' . time() . $_FILES['image']['name'];
		if (!move_uploaded_file($_FILES['image']['tmp_name'], '../' . $path)) {
			$_SESSION['message'] = 'Error uploading the image';
			header('Location: ../user-add.php');
			exit;
		}

		// Insert the form data into the database
		$query = "INSERT INTO `adventure` (`heading`, `date`, `duration`, `summary`, `avatar`) 
		          VALUES (?, ?, ?, ?, ?)";
		$stmt = mysqli_prepare($connect, $query);
		mysqli_stmt_bind_param($stmt, "sssss", $heading, $date, $duration, $summary, $path);

		if (mysqli_stmt_execute($stmt)) {
			$_SESSION['message'] = 'Adventure added successfully';
			header('Location: ../all-clients-adventures.php');
			exit;
		} else {
			$_SESSION['message'] = 'Error inserting data into the database';
			header('Location: ../usern-add.php');
			exit;
		}
	} else {
		$_SESSION['message'] = 'Error uploading the image';
		header('Location: ../user-add.php');
		exit;
	}
} else {
	header('Location: ../user-add.php');
	exit;
}

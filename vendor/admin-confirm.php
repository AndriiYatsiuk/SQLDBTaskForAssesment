<?php
session_start();
include 'connect.php';

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
			header('Location: ../admin-add.php');
			exit;
		}

		// Insert the form data into the database
		$query = "INSERT INTO `adventure` (`heading`, `date`, `duration`, `summary`, `avatar`) 
		          VALUES ('$heading', '$date', '$duration', '$summary', '$path')";
		if (mysqli_query($connect, $query)) {
			$_SESSION['message'] = 'Adventure added successfully';
			header('Location: ../all-adventures.php');
			exit;
		} else {
			$_SESSION['message'] = 'Error inserting data into the database';
			header('Location: ../admin-add.php');
			exit;
		}
	} else {
		$_SESSION['message'] = 'Error uploading the image';
		header('Location: ../admin-add.php');
		exit;
	}
} else {
	header('Location: ../admin-add.php');
	exit;
}

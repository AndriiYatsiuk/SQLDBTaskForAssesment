<?php
session_start();
include 'connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$_SESSION["role"] = $_POST["role"];
}




// If admin
if ($_SESSION["role"] == "admin") {


	$name = $_POST['name'];
	$lstname = $_POST['lstname'];
	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$confpassword = $_POST['confpassword'];

	if ($password === $confpassword) {
		$path = 'avfolder/' . time() . $_FILES['avatar']['name'];
		if (!move_uploaded_file($_FILES['avatar']['tmp_name'], '../' . $path)) {
			$_SESSION['message'] = 'Error uploading the image';
			header('Location: ../signup-form.php');
		}

		$password = md5($password);

		mysqli_query($connect, "INSERT INTO `admin` (`name`, `lstname`, `username`, `email`, `password`, `avatar`) VALUES ('$name', '$lstname', '$username', '$email', '$password', '$path')");

		$_SESSION['message'] = 'New admin registration successful';
		header('Location: ../signin-form.php');
	} else {
		$_SESSION['message'] = 'Passwords do not match. Please check your data';
		header('Location: ../signup-form.php');
	}
}
// If user
elseif ($_SESSION["role"] == "user") {
	$name = $_POST['name'];
	$lstname = $_POST['lstname'];
	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$confpassword = $_POST['confpassword'];

	if ($password === $confpassword) {
		$path = 'avfolder/' . time() . $_FILES['avatar']['name'];
		if (!move_uploaded_file($_FILES['avatar']['tmp_name'], '../' . $path)) {
			$_SESSION['message'] = 'Error uploading the image';
			header('Location: ../signup-form.php');
		}

		$password = md5($password);

		mysqli_query($connect, "INSERT INTO `users` (`name`, `lstname`, `username`, `email`, `password`, `avatar`) VALUES ('$name', '$lstname', '$username', '$email', '$password', '$path')");

		$_SESSION['message'] = 'New user registration successful';
		header('Location: ../signin-form.php');
	} else {
		$_SESSION['message'] = 'Passwords do not match. Please check your data';
		header('Location: ../signup-form.php');
	}
}

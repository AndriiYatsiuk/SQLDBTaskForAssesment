<?php
session_start();
include 'connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$_SESSION["role"] = $_POST["role"];
}

// If admin
if ($_SESSION["role"] == "admin") {
	$username = $_POST['username'];
	$password = md5($_POST['password']);

	$check_admin = mysqli_query($connect, "SELECT * FROM `admin` WHERE `username` = '$username' AND `password` = '$password'");
	if (mysqli_num_rows($check_admin) > 0) {
		$user = mysqli_fetch_assoc($check_admin);
		$_SESSION['admin'] = [
			"id" => $user['id'],
			"name" => $user['name'],
			"lstname" => $user['lstname'],
			"avatar" => $user['avatar'],
			"email" => $user['email']
		];
		header('Location: ../admin-add.php');
		exit();
	} else {
		$_SESSION['message2'] = 'Wrong password or username';
		header('Location: ../signin-form.php');
		exit();
	}
}
// If user
elseif ($_SESSION["role"] == "user") {
	$username = $_POST['username'];
	$password = md5($_POST['password']);

	$check_user = mysqli_query($connect, "SELECT * FROM `users` WHERE `username` = '$username' AND `password` = '$password'");
	if (mysqli_num_rows($check_user) > 0) {
		$user = mysqli_fetch_assoc($check_user);
		$_SESSION['user'] = [
			"id" => $user['id'],
			"name" => $user['name'],
			"lstname" => $user['lstname'],
			"avatar" => $user['avatar'],
			"email" => $user['email']
		];
		header('Location: ../user-add.php');
		exit();
	} else {
		$_SESSION['message2'] = 'Wrong password or username';
		header('Location: ../signin-form.php');
		exit();
	}
}

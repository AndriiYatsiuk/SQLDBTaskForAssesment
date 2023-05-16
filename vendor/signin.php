<?php
session_start();
include 'connect.php';

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
		"email" => $user['email'],

	];
	header('Location: ../admin-add.php');
} else {
	$_SESSION['message2'] = 'Wrong password or username';
	header('Location: ../user-signin.php');
}

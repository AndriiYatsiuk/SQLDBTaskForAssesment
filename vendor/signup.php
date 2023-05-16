<?php
session_start();
include 'connect.php';


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
		header('Location: ../new_user_account.php');
	}

	$password = md5($password);

	mysqli_query($connect, "INSERT INTO `users` (`id`, `name`, `lstname`, `username`, `email`, `password`, `avatar`) VALUES (NULL, '$name', '$lstname', '$username', '$email', '$password', '$path')");

	$_SESSION['message'] = 'New user registration succesful';
	header('Location: ../user-signin.php');
} else {
	$_SESSION['message'] = 'Passwords not matched. Please check your data';
	header('Location: ../new_user_account.php');
}

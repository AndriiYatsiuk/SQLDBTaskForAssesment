<?php
$connect = mysqli_connect('localhost', 'root', '', 'HalifaxCanoeKayakDb');
if (!$connect) {
	die('Error connection to DataBase');
}

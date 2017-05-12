<?php
session_start();
$connection = mysqli_connect('localhost:3306', 'root', '');
if (!$connection){
	die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'project');
if (!$select_db){
	die("Database Selection Failed" . mysqli_error($connection));
}
if (isset($_POST['cr']) and isset($_POST['tid'])){
	$cr = $_POST['cr'];
	$tid = $_POST['tid'];
	$query = "UPDATE trainee SET Credit_rating ='$cr' WHERE trainee_id ='$tid'";
	mysqli_query($connection, $query) or die(mysqli_error($connection));
	header('Location:trainingmanager_viewalltrainee.php');
}
?> 
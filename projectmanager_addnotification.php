<?php
error_reporting(E_ERROR);
$conn=mysqli_connect('localhost:3306', 'root', '');
$select_db = mysqli_select_db($conn, 'project');

if(!empty($_POST['add'])) {
	$subject = mysqli_real_escape_string($conn,$_POST["subject"]);
	$comment = mysqli_real_escape_string($conn,$_POST["comment"]);
	$sql = "INSERT INTO notif (subject,comment) VALUES('" . $subject . "','" . $comment . "')";
	mysqli_query($conn, $sql);
}
$sql2="SELECT * FROM notif ORDER BY id DESC limit 5";
$result=mysqli_query($conn, $sql2);
header("Location:projectmanager_notifcation.php");
?>
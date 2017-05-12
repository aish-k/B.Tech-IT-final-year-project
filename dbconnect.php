<?php
//connect mysql database
$host = "localhost:3306";
$user = "root";
$pass = "";
$db = "project";
$con = mysqli_connect($host, $user, $pass, $db) or die("Error " . mysqli_error($con));
?>
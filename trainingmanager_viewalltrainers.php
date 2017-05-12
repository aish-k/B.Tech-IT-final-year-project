<html>
<head>
<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style></head>
<body id="body">
<?php
session_start();
error_reporting(E_ERROR);
include 'footer.php';
include 'header.php';
$connection = mysqli_connect('localhost:3306', 'root', '');
if (!$connection){
	die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'project');
if (!$select_db){
	die("Database Selection Failed" . mysqli_error($connection));
}
//3.1.2 Checking the values are existing in the database or not
$query = "select * from trainer";
$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
$count = mysqli_num_rows($result);
echo "<table border='8' align='center'>";
echo "<tr>";
echo "<th>" ."Name" . "</th>";
echo "<th>" . "Trainer ID" . "</th>";
echo "<th>" . "Field of Study" . "</th>";
echo "<th>" . "Course" . "</th>";
echo "<th>" . "Rating" . "</th>";
echo "</tr>";
if ($count > 0){
	while($row = $result->fetch_assoc()) {

		
		echo "<tr>";
		echo "<td>" . $row["trainer_name"] ."</td>";
		echo "<td>" . $row["trainer_id"] . "</td>";
		echo "<td>" . $row["feild_of_study"] . "</td>";
		echo "<td>" . $row["course"] . "</td>";
		echo "<td>" . $row["Rating"]  . "</td>";
		echo "</tr>";
		
	}
}

echo "</table>";
?>
<a href="trainingmanager_options.php">  back</a> <br> <br> <br>
</body>
</html>
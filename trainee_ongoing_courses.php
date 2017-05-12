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
include 'header.php';
include 'footer.php';
error_reporting(E_ERROR);
$conn=mysqli_connect('localhost:3306', 'root', '',"project");
session_start();
$id=$_SESSION['id'];
$query = "select * from attendance where trainee_id='$id'";
$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
$count = mysqli_num_rows($result);
echo "<table border='10' align='center'>";
echo "<tr>";
echo "<th>" ."Course" . "</th>";
echo "<th>" . "Trainee id" . "</th>";
echo "<th>" . "Name" . "</th>";
echo "<th>" . "Present" . "</th>";
echo "<th>" . "Absent" . "</th>";
echo "<th>" . "Completion" . "</th>";
echo "<th>" . "Total hours" . "</th>";
echo "</tr>";
if ($count > 0){
	while($row = $result->fetch_assoc()) {

		
		echo "<tr>";
		echo "<td>" . $row["course"] ."</td>";
		echo "<td>" . $row["trainee_id"] . "</td>";
		echo "<td>" . $row["trainee_name"] . "</td>";
		echo "<td>" . $row["Present"] . "</td>";
		echo "<td>" . $row["Absent"] . "</td>";
		echo "<td>" . $row["Completion"] . "</td>";
		echo "<td>" . $row["Total_hours"] . "</td>";

		echo "</tr>";
		
	}
}
echo "</table>";
?>
<div style="position:absolute;top:100px;left=:0px;"><a href="trainee_options.php">back</a></div>
</body>	</html>
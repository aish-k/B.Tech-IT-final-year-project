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
</style>
</head>
<body id="body">
<?php 
include 'header.php';
include 'footer.php';
error_reporting(E_ERROR);
$conn=mysqli_connect('localhost:3306', 'root', '',"project"); 
session_start();
$id=$_SESSION['id'];
$query = "select * from approval where trainee_id='$id'";
$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
$count = mysqli_num_rows($result);
echo "<table border='10' align='center'>";
echo "<tr>";
echo "<th>" ."Course" . "</th>";
echo "<th>" . "Trainee id" . "</th>";
echo "<th>" . "Name" . "</th>";
echo "<th>" . "Approval" . "</th>";
echo "</tr>";
if ($count > 0){
	while($row = $result->fetch_assoc()) {

	
		echo "<tr>";
		echo "<td>" . $row["course"] ."</td>";
		echo "<td>" . $row["trainee_id"] . "</td>";
		echo "<td>" . $row["name"] . "</td>";
		echo "<td>" . $row["approval"] . "</td>";
		
		echo "</tr>";
		

	}
}

echo "</table>";  ?>
<a href="trainee_options.php">back</a>
	</body></html>

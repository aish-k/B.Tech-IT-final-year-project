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
<section >
<?php
session_start();
include "header.php";
include 'footer.php';
include 'dbconnect.php';
error_reporting(E_ERROR);

extract($_POST);
	$name = $_REQUEST['name'];
	//$id = $_REQUEST["id"];
	
	$query = "SELECT * FROM trainee WHERE name ='$name'";
	$result = mysqli_query($con, $query) or die(mysqli_error($con));
	$count = mysqli_num_rows($result);
	while($row = mysqli_fetch_array($result)) {		
	echo "<table border='8'align='center'> <tr> <th> Name </th><th> Trainee ID </th> <th> DOB </th> <th> city </th> <th> Area of Interest </th> <th> Technologies known </th> <th> Language known </th><th> Experience </th><th> Courses Completed </th><th> Net attendance </th><th> Net quiz score </th></tr>";
	echo "</tr><td>"; 
	echo $row['name'];
	echo"</td><td>"; 
	echo $row['trainee_id'];
	echo "</td><td>"; 
	echo $row['DOB'];
	echo "</td><td>";
	echo $row['city']; 
	echo "</td><td>"; 
	echo $row['AOI'];  
	echo" </td><td>"; 
	echo $row['tech_known'];
	echo "</td><td>";
	echo $row['lang_known'];
	echo "</td><td>";
	echo $row['experience'];
	echo "</td><td>";
	echo $row['projects_completed']; 
	echo "</td><td>";
	echo $row['net_att'];
	echo "</td><td>";
	echo $row['net_score'];
	echo "</td></tr></table>";
	
	 } 
?>
<a href="trainer_options.php"> back</a>
</section>
</body>
</html>
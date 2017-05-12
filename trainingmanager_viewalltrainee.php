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
	$query = "select * from trainee";
	$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
	$count = mysqli_num_rows($result);
	echo "<table border='8' max-width='40' align='center'>";
	echo "<tr>";
	echo "<th>" ."Name" . "</th>";
	echo "<th>" . "Trainee ID" . "</th>";
	echo "<th>" . "DOB" . "</th>";
	echo "<th>" . "city" . "</th>";
	echo "<th>" . "Area of Interest" . "</th>";
	echo "<th>" . "Technologies known" .  "</th>";
	echo "<th>" . "Language known" . "</th>";
	echo "<th>" . "Experience" . "</th>";
	echo "<th>" . "Course Completed" . "</th>";
	echo "<th>" . "Projects Completed" . "</th>";

	echo "</tr>";
	
	if ($count > 0){
		while($row = $result->fetch_assoc()) {

		
			
			echo "<tr>";
			echo "<td>" . $row["name"] ."</td>";
			echo "<td>" . $row["trainee_id"] . "</td>";
			echo "<td>" . $row["DOB"] . "</td>";
			echo "<td>" . $row["city"] . "</td>";
			echo "<td>" . $row["AOI"]  . "</td>";
			echo "<td>" . $row["tech_known"] . "</td>";
			echo "<td>" . $row["lang_known"]. "</td>";
			echo "<td>" . $row["experience"] . "</td>";
			echo "<td>" . $row["coursescompleted"] . "</td>";
			echo "<td>" . $row["projects_completed"] . "</td>";
			
			echo "</tr>";
			
		
	 }
	}
	echo "</table>";
	
?> <br>


<br>
</form>
<br>
<br>
<br><a href="trainingmanager_options.php">  back</a> <br> <br> <br>
	</body>
	</html>
<?php
session_start();
error_reporting(E_ERROR);
$connection = mysqli_connect('localhost:3306', 'root', '');
if (!$connection){
	die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'project');
if (!$select_db){
	die("Database Selection Failed" . mysqli_error($connection));
}
if (isset($_POST['name']) and isset($_POST['id'])){
	//3.1.1 Assigning posted values to variables.
	$name = $_POST['name'];
	$id = $_POST['id'];
	//3.1.2 Checking the values are existing in the database or not
	$query = "SELECT * FROM trainee WHERE name ='.$name.' and id ='.$id.'";
	$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
	$count = mysqli_num_rows($result);

	if ($result->num_rows > 0){
	while($row = $result->fetch_assoc()) {		

		echo "<table border='1'>";
		echo "<tr>";
		echo "<th>" ."Name" . "</th>";
		echo "<th>" . "Trainee ID" . "</th>";
		echo "<th>" . "DOB" . "</th>";
		echo "<th>" . "city" . "</th>";
		echo "<th>" . "Area of Interest" . "</th>";
		echo "<th>" . "Technologies known" .  "</th>";
		echo "<th>" . "Language known" . "</th>";
		echo "<th>" . "Experience" . "</th>";
		echo "</tr>";
	echo "<tr>";
	echo "<td>" . $row["name"] ."</td>";
	echo "<td>" . $row["trainee_id"] . "</td>";
	echo "<td>" . $row["DOB"] . "</td>";
	echo "<td>" . $row["city"] . "</td>";
	echo "<td>" . $row["AOI"]  . "</td>";
	echo "<td>" . $row["tech_known"] . "</td>";
	echo "<td>" . $row["lang_known"]. "</td>";
	echo "<td>" . $row["experience"] . "</td>";
	echo "</tr>";
	echo "</table>";
	
	 } 
	}
}
?>
	
<?php  //Start the Session
session_start();
error_reporting(E_ERROR);
if(isset($_POST['Submit'])){
$id=$_POST["id"];
$name=$_POST["name"];
$dob=$_POST["dob"];
$city=$_POST["city"];
$aoi=$_POST["aoi"];
$email=$_POST["email"];
$tech=$_POST["tech"];
$lang=$_POST["lang"];
$email=$_POST["email"];
$exp=$_POST["exp"];
$role=$_POST["role"];
$project=$_POST["project"];
$connection = mysqli_connect('localhost:3306', 'root', '');
if (!$connection){
	die("Database  Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'project');
if (!$select_db){
	die("Database Selection Failed" . mysqli_error($connection));
}
$sql ="INSERT INTO trainee(trainee_id,name,DOB,email,city,AOI,tech_known,lang_known,experience,projects_completed)
		VALUES ('$id','$name','$dob','$email','$city','$aoi','$tech','$lang','$exp','$project')";
if (mysqli_query($connection,$sql) === TRUE) {
	mysqli_query($connection,"INSERT INTO login(id,name,role) VALUES ('$id','$name','$role')");
	echo "New record created successfully";
	unset($_POST['Submit']);
	header('Location: trainingmanager_addtrainees.php');
} else {
	echo "Error: " . $sql . "<br>" . die(mysqli_error($connection));
	unset($_POST['Submit']);
}
}
?>

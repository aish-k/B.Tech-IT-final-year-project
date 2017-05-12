<?php  //Start the Session
session_start();
include "header.php";
include 'footer.php';
error_reporting(0);
$connection = mysqli_connect('localhost:3306', 'root', '');
if (!$connection){
	die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'project');
if (!$select_db){
	die("Database Selection Failed" . mysqli_error($connection));
}
//3. If the form is submitted or not.
//3.1 If the form is submitted
if (isset($_POST['username']) and isset($_POST['password'])){
//3.1.1 Assigning posted values to variables.
$username = $_POST['username'];
$password = $_POST['password'];
//3.1.2 Checking the values are existing in the database or not
$query = "SELECT * FROM login WHERE id ='$username' and name='$password'";
$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
$count = mysqli_num_rows($result);
$obj = mysqli_fetch_object($result);

//3.1.2 If the posted values are equal to the database values, then session will be created for the user.
if(($obj->role)==true){
	
		switch($obj->role)
		{
			case "trainee":
				header("Location:trainee_options.php");
				$_SESSION["name"] = "$password";
				$_SESSION["id"]="$username";
				break;
			case "trainer":
				header("Location:trainer_options.php");
				$_SESSION["name"] = "$password";
				$_SESSION["id"] ="$username";
				break;
			case "training manager":
					header("Location:trainingmanager_options.php");
					$_SESSION["name"] = "$password";
					$_SESSION["id"]="$username";
				    break;
				    
				    case "pm":
				    	header("Location:projectmanager_options.php");
				    	$_SESSION["name"] = "$password";
				    	$_SESSION["id"]="$username";
				    	break;
				    
					
		}
}
else {
	echo"Incorrect login credentials";
	}
}
?>

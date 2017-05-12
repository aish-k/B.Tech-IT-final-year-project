<html>
<?php 
session_start();
?>
<head>
<style>
html{
background-color:#DAFCAF;
}
#body{
	
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
	position:relative;
	z-index:0;
	}
#page{
	  
	position:relative;
    z-index:0;  
}

 
h1{
	font-family:"Myriad Pro","Helvetica Neue",Helvetica,Arial,Sans-Serif;
	text-shadow:0 1px 1px black;
	
	font-size:1.5em;
	padding:0.5em 0 0;
	text-transform:uppercase;
      
    
}
}

</style>
</head>
 <body style='background-color:#DAFCAF'>

  <section>
<?php

$id= $_SESSION['id'];
$name=$_SESSION['name'];
include_once 'dbconnect.php';
extract($_POST);
if(isset($_POST['Submit'])){
$course = $_POST['radio'];



$sql ="INSERT INTO approval (course,trainee_id,name) VALUES ('$course','$id','$name')";
if (mysqli_query($con,$sql) === TRUE) {
	echo "Applied successfully";
	unset($_POST['Submit']);

} else {
	echo "Error: " . $sql . "<br>" . die(mysqli_error($con));
	unset($_POST['Submit']);
}
}
?>
<a href="trainee_options.php">  Back </a>
</section>
</body>
</html>
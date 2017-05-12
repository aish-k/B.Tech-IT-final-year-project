<html>
<head><meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<link rel="stylesheet" href="/bootstrap/css/bootstrap.css" />	<!-- Google Webfonts -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<style type="text/css">
#body{
	/* Setting the default text color, size, page background and a font stack: */
	font-size:0.925em;
	color:#000000;
	background-color:#EEFFD9;
	font-family:Arial, Helvetica, sans-serif;
}
</style>
   
        <title>Learning Management System</title>

</head>

<body style="background-color:#EEFFD9">
<section id="body">
<?php
session_start();
include "header.php";
include 'footer.php';
echo "Hello"." " .$_SESSION['name'] ."<p>";
error_reporting(E_ERROR);


$id= $_SESSION['id'];
$name=$_SESSION['name'];
$_SESSION['id']=$id;
$_SESSION['name']=$name;
require("dbconnect.php");?>

<div data-role="main" class="ui-content">
    <h2>My content</h2>
    <div data-role="collapsible" onClick="event.stopPropagation();">
    <h4>Courses to upload</h4>
     <ul data-role="listview">
    <li><a href = "trainer_upload_course_materials.php">Upload Course Materials</a></li>
    </ul>
    </div>

    <div data-role="collapsible" onClick="event.stopPropagation();">
    <h4>Attendence</h4>
    <ul data-role="listview">
       <li><a href="trainer_mark_attendance.php">Mark Attendance</a></li>
   
    </ul>
    </div>
  <?php  $_SESSION['name']=$name;?>
    <div data-role="collapsible">
    <h4>Assessment Test</h4>
    <ul data-role="listview">
       <li><a href="Online_test_trainer_options.php" onClick="event.stopPropagation();">Assessment Portal</a></li>
      
    </ul>
    </div>
<form  name ="f1" action="trainer_viewtrainee.php">
    <div data-role="collapsible" onClick="event.stopPropagation();">
    <h4>View Trainee</h4>
    <ul data-role="listview">
      <li>Name <select name="name" id="name">
<?php

$rs=mysqli_query($con,"Select * from trainee order by name");
	  while($row=mysqli_fetch_array($rs))
{


echo "<option value='$row[2]' selected>$row[2]</option>";

}
echo "<input type='submit' name= 'submit' value='Select'>";
?> </select></li>
    <!--<li>Id: <input type=text name="id" name="id"> </li> --->
      
    </ul>
    </div>
 </form>
  </div> 
</section>
</body>
</html>
<script type="text/javascript">
//    var mytextbox = document.getElementById('id');
 //   var mydropdown = document.getElementById('name');

 //   mydropdown.onchange = function(){
 //         mytextbox.value = mytextbox.value  + this.value; //to appened
         //mytextbox.innerHTML = this.value;
  //  }
</script>